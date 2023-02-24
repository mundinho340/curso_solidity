const ethers = require("ethers");
const fs = require("fs-extra");

async function main() {
  let provider = new ethers.providers.JsonRpcProvider(
    "HTTP://172.22.144.1:7545"
  );

  let wallet = new ethers.Wallet(
    "0x67d2a2985a73dbf98acfb4556e5a5ecfc9e1cd42af164bb517b02e943ca04c63",
    provider
  );

  const abi = fs.readFileSync("./SimpleStorage_sol_SimpleStorage.abi", "utf8");

  const binary = fs.readFileSync(
    "./SimpleStorage_sol_SimpleStorage.bin",
    "utf8"
  );

  const contractFactory = new ethers.ContractFactory(abi, binary, wallet);
  console.log("Deploing, please wait ...");
  const contract = await contractFactory.deploy();
  console.log(contract);
}

main()
  .then(() => process.exi(0))
  .catch((error) => {
    process.exit(1);
  });
