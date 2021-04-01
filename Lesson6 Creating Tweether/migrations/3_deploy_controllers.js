const UserController = artifacts.require('UserController');
const TweetController = artifacts.require('TweetController');

module.exports = (deployer) => {
    deployer.then(async () => {
        await deployer.deploy(UserController);
        await deployer.deploy(TweetController);
    })   
    .then(() => {
        return Promise.all([
            UserStorage.deployed(),
            TweetStorage.deployed(),
        ]);
    }) 
    .then(storageContracts => {
        const [userStorage, tweetSStorage] = storageContracts;

        return Promise.all([
            userStorage.setControllerAddress(UserController.address),
            tweetStorage.setControllerAddress(TweetController.address),
        ])
    })
}