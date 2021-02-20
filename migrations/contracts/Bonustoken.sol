pragma solidity =0.6.6;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';

contract Bonustoken is ERC20 {
  address public admin;
  address public liquidator;
  constructor() ERC20("Bonus Token", "BTK") public {
    admin = msg.sender;
  }

  function setLiquidator(address _liquidator) external {
    require(msg.sender == admin, 'only admin can set liquidator')
    liquidator = _liquidator;
  }

  function mintBonusToken(address to, uint amount) external{
    require(msg.sender==liquidator, 'only liquidator can mint the bonus tokens');
    mintBonusToken(to, amount);
  }
}


