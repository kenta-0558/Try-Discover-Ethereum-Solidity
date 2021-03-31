// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../../contracts/users/UserStorage.sol";


contract TestUserStorage {
    
    function testCreateFirstUser() public {
        
        UserStorage _storage = UserStorage(DeployedAddresses.UserStorage());

        uint _expectedId = 1;

        Assert.equal(_storage.createUser("Kiichi"), _expectedId, "User with id 1");
    }
}

