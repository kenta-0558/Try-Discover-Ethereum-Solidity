const HelloWorld = artifacts.require('HelloWorld');

contract("HelloWorld", (accounts) => {

    it ("should return my Name", async () => {
        const instance = await HelloWorld.deployed();
        const myName = await instance.getMyName.call();

        assert.equal(myName, "Kiichi")
    })

    it ("should change my Name", async () => {
        const instance = await HelloWorld.deployed();
        await instance.changeMyName("Ichina");
        const newName = await instance.getMyName.call();

        assert.equal(newName, "Ichina");
    })
})