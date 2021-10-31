pragma solidity ^0.8.4;

contract CallMeChallenge {
    function callme() public {}
}

contract CallMe {
    
    CallMeChallenge cm;
    
    constructor(address _contractAddress) {
        cm = CallMeChallenge(_contractAddress);
        cm.callme();
    }
}