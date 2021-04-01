// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;


contract Owned {
    
    address public ownerAddress;

    constructor() {
        ownerAddress = msg.sender;
    } 

    modifier onlyOwner() {
        require(msg.sender == ownerAddress);
        _;
    } 

    function transferOwnership(address _newOwner) public onlyOwner {

        require(_newOwner != address(0));

        ownerAddress = _newOwner;
    } 
}