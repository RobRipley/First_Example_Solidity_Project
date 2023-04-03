//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract walletSmartContractProject {

    address owner;

    constructor() {
        owner = msg.sender;

    }

    receive() external payable {

    }

    fallback() external payable {

    }

    function deposit() public payable {
        
    }

    function withdrawAll() public payable {
        payable(owner).transfer(address(this).balance);
    }

    function getBalance() public view returns(uint) {
        uint balance = address(this).balance;
        return(balance);
    }

    function withdraw(uint amount) public {
        if(msg.sender == owner) {
            payable(owner).transfer(amount);
        }
    }

}