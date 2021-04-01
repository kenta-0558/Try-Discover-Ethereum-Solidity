// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import '../helpers/BaseStorage.sol';


contract UserStorage is BaseStorage {

    uint lastestUserId = 0;

    struct Profile {
        uint id;
        bytes32 username;
    }

    mapping (uint => Profile) public profiles;

    function createUser(bytes32 _username) public returns (uint) {

        require(msg.sender == controllerAddress);
        
        lastestUserId++;

        profiles[lastestUserId] = Profile(lastestUserId, _username);

        return lastestUserId;
    }

    // function getUserFromId(uint _userId) public view returns (uint, bytes32) {
    //     return (
    //         profiles[_userId].id,
    //         profiles[_userId].username
    //     );
    // }

}