// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract coffee {

    struct Memo {
        string name;
        string message;
        uint256 timestamp;
        address from;
    }
    Memo[] public memos;
    address payable owner;
    constructor() {
        owner = payable(msg.sender);

    }
    function buycoffee(string calldata name,string calldata message) external payable {
        require(msg.value>0,"Pls pay more than 0 ether ");
        owner.transfer(msg.value);
        memos.push(Memo(name,message,block.timestamp,msg.sender));
    }
    
    function getMemos() public view returns(Memo[] memory) {
        return memos;
    }
}