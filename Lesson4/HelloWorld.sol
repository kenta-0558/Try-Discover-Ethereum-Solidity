// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract HelloWorld {
    
    string myName = "Kenta Sato";
    
    function getMyName() public view returns (string memory) {
        return myName;
    }
    
    function changeMyName(string memory _newName) public {
        myName = _newName;
    }
}