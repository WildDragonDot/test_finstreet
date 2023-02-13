<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Database</title>
</head>
<h1 style="text-align: center;" id="data_status_show">Please wait your ETH crowdfunding database updated autometically...</h1>

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

        async function updateCrowdData(updateData, projectAddress) {
            var formData_update = new FormData();
            const update_min_donation = web3.utils.fromWei(updateData[0].toString(), 'ether');
            const update_target_donation = web3.utils.fromWei(updateData[1].toString(), 'ether');
            const update_project_uri_link = updateData[2].toString();
            const update_project_creater = updateData[3].toString();

            formData_update.append('update_min_donation', update_min_donation);
            formData_update.append('update_target_donation', update_target_donation);
            formData_update.append('update_project_uri_link', update_project_uri_link);
            formData_update.append('update_project_creater', update_project_creater);
            formData_update.append('project_address', projectAddress);

            fetch(update_project_uri_link).then((response) => {
                if (response.ok) {
                    return response.json();
                }
                throw new Error('Something went wrong');
            }).then((data) => {
                const name = data[0].content.title;
                const description = data[0].content.story;
                const thumbnail_ipfs = data[0].content.thumbnail_url;
                const video_ipfs = data[0].content.video_url;
                const module_uuid = data[0].content.category;
                const user_type = data[0].content.user_type;

                var module = '';
                if (module_uuid == '927f0965-6eed-462c-bfa0-79867c9f9448') {
                    module = 'Explainers';
                } else if (module_uuid == 'fd3d24bd-8764-494e-9ade-40911b8e11a1') {
                    module = 'Tutorials';
                } else if (module_uuid == '5dae4ba7-933a-40a9-8866-49ee971ccf87') {
                    module = 'Review';
                } else if (module_uuid == '5822014a-02af-41c4-8564-0ec4ceba8db6') {
                    module = 'News';
                } else if (module_uuid == '0f01d804-648d-42a7-ab11-bdc373f4b7bd') {
                    module = 'Others';
                } else {
                    module = '';
                }
                const amount_in = data[0].crowdfunding_details.amount_in;
                const user_address = data[0].author.address;

                formData_update.append('user_type', user_type);
                formData_update.append('name', name);
                formData_update.append('module', module);
                formData_update.append('module_uuid', module_uuid);
                formData_update.append('video_ipfs', video_ipfs);
                formData_update.append('thumbnail_ipfs', thumbnail_ipfs);
                formData_update.append('description', description);
                formData_update.append('is_croudfunded', 'true');
                formData_update.append('amount_in', amount_in);
                formData_update.append('user_address', user_address);
                $.ajax({
                    url: "php/eth_data_update_table.php",
                    type: "POST",
                    cache: false,
                    contentType: false,
                    processData: false,
                    data: formData_update,
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
                await myProjectContract.methods.getProjectData().call().then((res) => {
                    // console.log(res);
                    var formData = new FormData();
                    formData.append('project_address', projectAddress.toString());
                    $.ajax({
                        url: "php/eth_data_update_check.php",
                        type: "POST",
                        cache: false,
                        contentType: false,
                        processData: false,
                        data: formData,
                        success: function(data) {
                            data = JSON.parse(data);
                            if (data.status == 201) {
                                updateCrowdData(res, projectAddress);
                            } else if (data.status == 601) {
                                console.log("Data already exist");
                            } else if (data.status == 404) {
                                console.log(data.error);
                            }
                            if (key === total_count_data) {
                                alert('Data updated successfully.');
                                $('#data_status_show').html('Data updated successfully.');
                            }
                        }
                    });
                }).catch((err) => {
                    console.log(err);
                });
            } else {
                console.log("Please connect with metamask");
            }
        }

        getAllProjectsETH();
    </script>
</body>

</html>