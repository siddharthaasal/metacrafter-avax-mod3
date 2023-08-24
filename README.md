
# Custom Token Contract - MODULE 3
In this project under Eth-Avax Module 3 of Metacrafter Training, I have create a smart contract "MyToken" which deals with creation of a custom token.


## Overview
This project has been made using hardhat and has been deployed on localhost. We interact with the contract using Remix IDE.
In this contract I have called my token "Edith". I have added the functionalities like token minting, token burning, and token transfer.

## Getting Started

## Functions

### mint_token
It can be accessed by the user only. It takes 2 parameters account_address and amount. It adds the amount to the account_address' balance and to the total supply as well.

### burn_token
It takes 1 parameter amount. It checks if the amount is greater than or equal to the balance of the person who sent the request, if yes then it deducts the amount from the account_address' balance and from the total supply as well.


### transfer_token
It takes 2 parameters receiver_address and amount. It checks if the amount is greater than or equal to the balance of the person who sent the request, if yes then it deducts the amount from the account_address' balance who sent the request and it to the balance of receiver_address' account.

### Deployment

Follow the given steps for deploying and interacting with the contract.

1. Clone this project.
2. Run `npm i`
3. In the scripts/deploy.js, give token-name, token-abbreviation, and initial-supply in the following parameter list.
  `const myToken = await MyToken.deploy("Edith", "EDTH", 50);`
4. Run `npx hardhat node`
5. In another terminal run `npx hardhat run --network localhost scripts/deploy.js`
6. Copy your contract and paste it on Remix IDE. 
7. Choose "Injected Provider".
8. Copy the address of your deployed contract from your termial, and paste it on remix's deployement section, and load your contract from there.
9. Play Around



## Resources

- [Solidity Documentation](https://soliditylang.org/docs/)
- [Remix Ethereum IDE](https://remix.ethereum.org/)
- [Hardhat Documentation](https://hardhat.org/)


## Owner Name
**Siddharth Aasal**
