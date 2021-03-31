const TweetStorage = artifacts.require('TweetStorage');

contract('tweets', () => {

    before (async () => {
        const tweetStorage = await TweetStorage.deployed();
        await tweetStorage.createTweet(1, "I will be a blockchain developer.");
    })

    it ("get first Tweet", async () => {
        const storage = await TweetStorage.deployed();

        const tweet = await storage.tweets.call(1);
        const { id, text, useId } = tweet;
    
        assert.equal(parseInt(id), 1);
        assert.equal(text, "I will be a blockchain developer.");
        assert.equal(parseInt(id), 1);
    });
});