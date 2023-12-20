import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";

const deployYourContract: DeployFunction = async function (hre: HardhatRuntimeEnvironment) {

  const { deployer } = await hre.getNamedAccounts();
  const { deploy } = hre.deployments;

  await deploy("MyCollectible", {
    from: deployer,
    // Contract constructor arguments
    args: [],
    log: true,
    autoMine: true,
  });

  // Get the deployed contract
  const yourContract = await hre.ethers.getContract("MyCollectible", deployer);
};

export default deployYourContract;

deployYourContract.tags = ["MyCollectible"];
