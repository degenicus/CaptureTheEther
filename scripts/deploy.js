async function main() {
    const [deployer] = await ethers.getSigners();
  
    console.log("Deploying contracts with the account:", deployer.address);
  
    console.log("Account balance:", (await deployer.getBalance()).toString());
  
    const CallMe = await ethers.getContractFactory("CallMe");
    const callMe = await CallMe.deploy("0x20F100c8Cc6eE2C7fd34eaD0bc3BB5FA0F78654b");
  
    console.log("CallMe address:", callMe.address);
  }
  
  main()
    .then(() => process.exit(0))
    .catch((error) => {
      console.error(error);
      process.exit(1);
    });