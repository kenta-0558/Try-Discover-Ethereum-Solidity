const UserStorage = artifacts.require("UserStorage");

contract('users', () => {

    it ("create User", async () => {

        const storage = await UserStorage.deployed();
        
        const username = web3.utils.fromAscii("Kiichi");
        
        const tx = await storage.createUser(username);

        assert.isOk(tx);
    })
})