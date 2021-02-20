const Factory = artifacts.require("UniswapV2Factory.sol");
const Kata = artifacts.require("Kata.sol");
const Katana = artifacts.require("Katana.sol");

module.exports = async function (deployer, _network, addresses) {
  await deployer.deploy(Factory, addresses[0]);
  const factory = await Factory.deployed();

  if (network=="mainnet"){
  	//etc
  }
  else{

  	await deployer.deploy(Kata);
  	await deployer.deploy(Katana);

  	const kata = await Kata.deployed();
  	const katana = await Katana.deployed();

  	kataAddress = kata.address;
  	katanaAddress = katana.address;

  }

  await createPair(kataAddress, katanaAddress);
};
