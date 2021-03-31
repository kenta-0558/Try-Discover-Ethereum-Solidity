// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;


contract UserStorage {

    uint lastestUserId = 0;

    struct Profile {
        uint id;
        bytes32 username;
    }

    mapping (uint => Profile) profiles;

    function createUser(bytes32 _username) public returns (uint) {
        
        lastestUserId++;

        profiles[lastestUserId] = Profile(lastestUserId, _username);

        return lastestUserId;
    }


}