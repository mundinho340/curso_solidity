const ethers = require('ethers')
const fs = require('fs-extra')

async function main(){
  let provider = new ethers.providers.JsonRpcProvider( "HTTP://172.22.144.1:7545")

  let wallet = new ethers.Wallet(
    "6acada07cba5be8d777039c4836c674cd28d75663bc564286ba7135df68296ae",provider
  );

  const abi =fs.readFileSync("./SimpleStorage_sol_SimpleStorage.abi",'utf8')

  const binary = fs.readFileSync(
    "./SimpleStorage_sol_SimpleStorage.bin",
    "utf8"
  );

  const contractFactory = new ethers.ContractFactory(abi, binary,wallet)
  console.log('Deploing, please wait ...')
  const contract =  contractFactory.deploy()
  console.log(contract)
}

main()
.then(()=> process.exi(0))
.catch((error)=>{
  process.exit(1)
})
