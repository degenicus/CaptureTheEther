pragma solidity ^0.8.0;

contract GuessTheNumberChallenge {
    function guess(uint8 n) public payable {}
}

contract GuessTheNumber {
    uint8 answer = 42;

    constructor(address _contractAddress) {
        GuessTheNumberChallenge gtnc = GuessTheNumberChallenge(_contractAddress);
        gtnc.guess{ value: 1 }(answer);
    }
}