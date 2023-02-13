<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/near-api-js@0.41.0/dist/near-api-js.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/web3/1.7.1-rc.0/web3.min.js"></script>

    <script src="../../contract/EthAbi.js"></script>
    <script src="../../contract/EthContract.js"></script>
    <!-- matic -->
    <script src="../../contract/matic/maticFactoryContract.js"></script>
    <script src="../../contract/matic/maticContract.js"></script>
    <!-- bnb -->
    <script src="../../contract/bnb/bnbFactoryContract.js"></script>
    <script src="../../contract/bnb/bnbContract.js"></script>
    <!-- prject Address  -->
    <script src="../../contract/projectFunding.js"></script>
    <script src="../../contract/matic/maticProjectFunding.js"></script>
    <script src="../../contract/bnb/bnbProjectFunding.js"></script>
    <script>
        async function getAllProjectsMatic() {
            if (window.ethereum) {
                
                var accounts = await ethereum.request({
                    method: 'eth_requestAccounts'
                });
                var currentaddress = accounts[0];
                web3 = new Web3(window.ethereum);

                myProjectContract = new web3.eth.Contract(maticFactoryContract, maticContract);

                await myProjectContract.methods.getProjects().call({
                    from: currentaddress
                }).then((res) => {
                    // const first_user = res[0];
                    res.map((val,key)=>{
                        getEachProjectMatic(val);
                    });
                }).catch((err) => {
                    console.log(err);
                });
            } else {
                console.log("Please connect with metamask");
            }
        }


        async function getEachProjectMatic(projectAddress) {
            if (window.ethereum) {
                
                var accounts = await ethereum.request({
                    method: 'eth_requestAccounts'
                });
                var currentaddress = accounts[0];
                web3 = new Web3(window.ethereum);
                myProjectContract = new web3.eth.Contract(maticProjectFunding, projectAddress);
                await myProjectContract.methods.getProjectData().call().then((res) => {
                    console.log(res);
                    // fetch(res[2])
                    // .then((response) => response.json())
                    // .then((data) => console.log(data[0]));

                    
                    // const total_get_fund = res[5];
                    // const total_withdrawal_eth = res[4];
                    // const withdrawalEth = web3.utils.fromWei(total_withdrawal_eth.toString(),
                    //     'ether');
                    // $('#withdrawal_eth').text(withdrawalEth);
                    // const recievedEth = web3.utils.fromWei(total_get_fund.toString(), 'ether');
                    // $('#recieved_eth').text(recievedEth);
                }).catch((err) => {
                    console.log(err);
                });
            } else {
                console.log("Please connect with metamask");
            }
        }


        getAllProjectsMatic();
    </script>
</body>

</html>