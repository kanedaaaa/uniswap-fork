pragma solidity = 0.5.16;

import "../node_modules/@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "../node_modules/@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol";


contract Kata is ERC20, ERC20Detailed{
	constructor() ERC20Detailed('Kata', "KATA", 18) public{}
}

