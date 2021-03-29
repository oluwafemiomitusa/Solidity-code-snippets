/*
Write down a smart contract that meets the following requirements.

1. It uses mapping to associate Ethereum address with associated value
2. It uses a function to set the balance with a specific address
3. It uses a function to retrieve the set balance with a specific address
*/
pragma solidity ^0.5.0;

//It uses mapping to associate Ethereum address with associated value
contract LedgerBalance {
   mapping(address => uint) public balances;

  // It uses a function to set the balance with a specific address
   function updateBalance(uint newBalance) public {
      balances[msg.sender] = newBalance;
   }
}
//It uses a function to retrieve the set balance with a specific address
contract Updater {
   function updateBalance() public returns (uint) {
      LedgerBalance ledgerBalance = new LedgerBalance();
      ledgerBalance.updateBalance(10);
      return ledgerBalance.balances(address(this));
   }
}
