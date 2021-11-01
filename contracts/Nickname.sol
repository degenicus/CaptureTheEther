pragma solidity ^0.8.4;

contract CaptureTheEther {
    function setNickname(bytes32 nickname) public {}
}

contract Nickname {
    
    CaptureTheEther cte;
    
    constructor(address _contractAddress) {
        cte = CaptureTheEther(_contractAddress);
    }

    function setNickname() public {
        cte.setNickname(0x4f6c6420426f6200000000000000000000000000000000000000000000000000);
    }
}