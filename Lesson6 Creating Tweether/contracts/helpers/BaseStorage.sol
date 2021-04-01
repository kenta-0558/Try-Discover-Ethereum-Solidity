// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import './Owned.sol';

contract BaseStorage is Owned {

    address public controllerAddress;

    modifier onlyController() {
        require(msg.sender == controllerAddress);
        _;
    }

    function setControllerAddress(address _controllerAddress) public onlyOwner {
        
        controllerAddress = _controllerAddress;
    }   
}