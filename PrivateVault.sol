// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract PrivateVault {
    address payable private owner;
    constructor() {
        owner = payable(msg.sender);
    }
    function deposit() public payable {}
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
    function withdraw(uint amount) public {
        require(
            msg.sender == owner,
            "Only the contract owner can withdraw funds."
        );
        require(
            address(this).balance >= amount,
            "Not sufficient balance in the contract."
        );
        owner.transfer(amount);
    }
}
