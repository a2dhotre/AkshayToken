pragma solidity >=0.4.11 <=0.6.0;


import "./StandardToken.sol";


/**
 * @title SimpleToken
 * @dev Very simple ERC20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `StandardToken` functions.
 */
contract AkshayToken is StandardToken {

  string public name = "Akshay Token";
  string public symbol = "AKS";
  uint256 public decimals = 18;
  uint256 public INITIAL_SUPPLY = 100000000 * 1 ether;

  /**
   * @dev Contructor that gives msg.sender all of existing tokens.
   */
    constructor() public {
    totalSupply = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
  }

}
