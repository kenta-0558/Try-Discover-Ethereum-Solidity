// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import '../helpers/BaseStorage.sol';

contract TweetStorage is BaseStorage {

    uint latestTweetId = 0;

    struct Tweet {
        uint id;
        string text;
        uint userId;
        uint postedAt;        
    }

    mapping (uint => Tweet) public tweets;

    function createTweet(uint _userId, string memory _text) public onlyController returns (uint) {

        latestTweetId++;

        tweets[latestTweetId] = Tweet(latestTweetId, _text, _userId, block.timestamp);

        return latestTweetId;
    }

    // function getTweet() {

    // }

}