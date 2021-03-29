const fs = require('fs');
const solc = require('solc');

const content = fs.readFileSync('HelloWorld.sol', 'utf-8');

const input = {
    language: 'Solidity',
    sources: {
        'HelloWorld.sol': {
            content,
        }
    },
    settings: {
        outputSelection: {
            '*': {
                '*': ['*']
            }
        }
    }    
};

const output = JSON.parse(solc.compile(JSON.stringify(input)));

console.log(output);