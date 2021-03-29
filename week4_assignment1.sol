// SPDX-License-Identifier: GPL-3.0
/* Please write down a smart contract that fulfills the following requirements:

1. It uses a constructor to assign the owner(the person who is currently connecting with the contract) address to the owner variable.
2. It uses the function modifier and set a restriction that only the owner can change the address. 
3. Set function. It uses for change owner. It takes input from the original owner and set the new owner equal to the address that input.
*/

pragma solidity >=0.4.16 <0.9.0;

contract assignment4 {

   //It uses a constructor to assign the owner(the person who is currently connecting with the contract) address to the owner variable.
   address owner = 0xd4e46de8DE8B4063Cf2f02D41964e5a3019c3505;

    constructor() public {
      owner = msg.sender;
   }

    //It uses the function modifier and set a restriction that only the owner can change the address. 
    modifier onlyOwner {
      require(msg.sender == owner);
      _;
    }

    //Set function. It uses for change owner. It takes input from the original owner and set the new owner equal to the address that input.
    function changeAddress(address _address) public onlyOwner {
        owner = _address;
    }   

    function getAddress() public view returns(address){
        return(owner);
    }
 
}
