# Private Vault Smart Contract

This is a simple smart contract for a private vault written in Solidity.  
The contract allows anyone to deposit Ether, but **only the contract owner** can withdraw funds.

---

## Solidity Version

Compatible with Solidity versions **>=0.7.0 and <0.9.0**

---

## Ownership Logic

- The contract deployer is set as the owner using the constructor
- The owner address is stored as `payable` so it can receive Ether
- Withdrawal is restricted using `require(msg.sender == owner)`
- This ensures that only the owner can withdraw Ether from the contract

---

## Contract Functions

The contract has three main functions:

### 1. `deposit()`

```solidity
function deposit() public payable {}
```
- Accepts Ether from any address  
- The Ether is stored in the contract balance  

---

### 2. `getBalance()`

```solidity
function getBalance() public view returns (uint)
```
- Returns the current Ether balance of the contract
- Can be called by anyone

---

### 3. `withdraw(uint amount)`

```solidity
function withdraw(uint amount) public
```
- Can only be called by the owner
- Ensures `amount <= contract balance` using `require`
- Transfers the specified Ether amount to the owner

---

## Summary

- Anyone can deposit Ether
- Only the owner can withdraw Ether
- Ownership is fixed at deployment

---
