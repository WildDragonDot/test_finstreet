<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Database</title>
</head>
<h1 style="text-align: center;" id="data_status_show">Please wait your database updated autometically...</h1>
<div style="text-align: center;margin:1rem;"><small><b style="text-decoration: underline;">Note:</b>&nbsp;If data not update autometically then press update button.</small></div>
<div style="display:flex;justify-content:center;align-items:center"><button onclick="checknet()" style="text-align:center;padding: 8px 25px;background: #096dc3;border-color: #096dc3;color: #fff;font-size: 1rem;cursor:pointer">Update</button></div>

<body>
    <script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/near-api-js@0.41.0/dist/near-api-js.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/web3/1.7.1-rc.0/web3.min.js"></script>

    <script src="../../contract/EthAbi.js"></script>
    <script src="../../contract/EthContract.js"></script>
    <!-- prject Address  -->
    <script src="../../contract/projectFunding.js"></script>
    <script>
        async function getAllProjectsETH() {
            if (window.ethereum) {

                var accounts = await ethereum.request({
                    method: 'eth_requestAccounts'
                });
                var currentaddress = accounts[0];
                web3 = new Web3(window.ethereum);

                myProjectContract = new web3.eth.Contract(factoryContract, contractAddress);

                await myProjectContract.methods.getProjects().call({
                    from: currentaddress
                }).then((res) => {
                    const total_count_data = res.length;
                    res.map((val, key) => {
                        getEachProjectETH(val, key + 1, total_count_data);
                    });
                }).catch((err) => {
                    console.log(err);
                });
            } else {
                console.log("Please connect with metamask");
            }
        }

        async function upload_extra_money(diff_amount, pay_amount_in, projectAddress, eachUser) {
            if (window.ethereum) {
                var accounts = await ethereum.request({
                    method: 'eth_requestAccounts'
                });
                var currentaddress = accounts[0];
                web3 = new Web3(window.ethereum);
                myProjectContract = new web3.eth.Contract(projectFunding, projectAddress);
                await myProjectContract.methods.getProjectData().call().then((res) => {
                    fetch(res[2]).then((response) => {
                        if (response.ok) {
                            return response.json();
                        }
                        throw new Error('Something went wrong');
                    }).then((data) => {
                        const thumbnail_url = data[0].content.thumbnail_url;
                        const video_url = data[0].content.video_url;
                        var formData_update_new = new FormData();
                        formData_update_new.append('user', eachUser.toLowerCase());
                        formData_update_new.append('projectAddress', projectAddress);
                        formData_update_new.append('pay_amount_in', pay_amount_in);
                        formData_update_new.append('diff_amount', parseFloat(diff_amount).toFixed(4));
                        formData_update_new.append('thumbnail_url', thumbnail_url);
                        formData_update_new.append('video_url', video_url);
                        $.ajax({
                            url: "php/eth_crowd_data_update_table.php",
                            type: "POST",
                            cache: false,
                            contentType: false,
                            processData: false,
                            data: formData_update_new,
                            success: function(data) {
                                data = JSON.parse(data);
                                console.log(data);
                                if (data.status == 201) {
                                    // updateCrowdData(res, projectAddress);
                                } else if (data.status == 601) {
                                    console.log("Data already exist");
                                } else if (data.status == 404) {
                                    console.log(data.error);
                                }
                            }
                        });
                    })
                }).catch((err) => {
                    console.log(err);
                });
            } else {
                console.log("Please connect with metamask");
            }
        }

        async function getInvestmentDetails(userAddress, projectAddress) {
            var accounts = await ethereum.request({
                method: 'eth_requestAccounts'
            });

            var single_user_address = '';
            var single_project_address = '';

            userAddress.map((eachUser, key) => {
                var currentaddress = accounts[0];
                web3 = new Web3(window.ethereum);
                myProjectContract = new web3.eth.Contract(projectFunding, projectAddress);
                myProjectContract.methods.getContribution(eachUser).call().then((res) => {

                    var formData = new FormData();
                    formData.append('project_address', projectAddress.toString());
                    formData.append('user_address', eachUser.toString());
                    const pay_amount = web3.utils.fromWei(res.toString(), 'ether');
                    const pay_amount_in = 'ETH';
                    formData.append('pay_amount', pay_amount);
                    if (single_project_address !== projectAddress && single_user_address !== eachUser) {
                        $.ajax({
                            url: "php/eth_fund_exit_check.php",
                            type: "POST",
                            cache: false,
                            contentType: false,
                            processData: false,
                            data: formData,
                            success: function(data) {
                                data = JSON.parse(data);
                                if (data.status == 201) {
                                    if (data.pay_amount) {
                                        const diff_amount = parseFloat(pay_amount) - parseFloat(data.pay_amount);
                                        if (diff_amount > 0) {
                                            upload_extra_money(diff_amount, pay_amount_in, projectAddress, eachUser);
                                        } else {
                                            console.log('all things ok ..no need to update');
                                        }
                                    } else {
                                        upload_extra_money(parseFloat(pay_amount), pay_amount_in, projectAddress, eachUser);
                                    }
                                } else if (data.status == 601) {
                                    console.log("Data already exist");
                                } else if (data.status == 404) {
                                    console.log(data.error);
                                }
                            }
                        });
                    }
                    single_project_address = projectAddress;
                    single_user_address = eachUser;
                }).catch((err) => {
                    console.log(err);
                });
            });
        }


        async function getEachProjectETH(projectAddress, key, total_count_data) {
            if (window.ethereum) {
                var accounts = await ethereum.request({
                    method: 'eth_requestAccounts'
                });
                var currentaddress = accounts[0];
                web3 = new Web3(window.ethereum);
                myProjectContract = new web3.eth.Contract(projectFunding, projectAddress);
                await myProjectContract.methods.getAllInvestors().call().then((res) => {
                    if (res.length > 0) {
                        getInvestmentDetails(res, projectAddress);
                    }
                }).catch((err) => {
                    console.log(err);
                });
            } else {
                console.log("Please connect with metamask");
            }
        }


        async function changeNetwork(chainId) {
            console.log(window.ethereum.networkVersion);
            if (window.ethereum.networkVersion !== chainId) {
                try {
                    await window.ethereum.request({
                        method: 'wallet_switchEthereumChain',
                        params: [{
                            chainId: `0x${chainId}`
                        }],
                    });
                } catch (err) {
                    console.log(err);
                }
            }
        }

        function checknet() {
            if ((window.ethereum.networkVersion) !== '5') {
                changeNetwork('5');
            } else {
                getAllProjectsETH();
            }
        }

        checknet();
    </script>
</body>

</html>