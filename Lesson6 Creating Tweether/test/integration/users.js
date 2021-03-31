const UserStorage = artifacts.require("UserStorage");

contract('users', () => {

    it ("create User", async () => {

        const storage = await UserStorage.deployed();
        
        const username = web3.utils.fromAscii("Kiichi");
        
        const tx = await storage.createUser(username);

        assert.isOk(tx);
    })

    it ("get user with ID", async () => {

        const storage = await UserStorage.deployed();
        const userId = 1;

        const userInfo = await storage.getUserFromId.call(userId);

        const username = web3.utils.toAscii(userInfo[1]).replace(/\u0000/g, '');
        
        assert.equal(username, "Kiichi");
    })
})