// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {

    // public variables here
    string public tokenName = "TANNY";
    string public tokenAbr = "TN";
    uint public tokenSupply = 0;

    // mapping variable here
    mapping (address => uint) public balances;

    // mint function
    function mint(address _address, uint _value) public {
      tokenSupply += _value;
      balances[_address] += _value;
    }

    // burn function
    function burn(address _address, uint _value) public {
       if (balances[_address] >= _value) {
          tokenSupply -= _value;
         balances[_address] -= _value;
      } 
    }
}
