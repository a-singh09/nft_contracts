# NFT Marketplace

## Overview

The NFT Marketplace is a decentralized application built on the Ethereum blockchain that allows users to mint, buy, sell, and like non-fungible tokens (NFTs). This smart contract implements the ERC721 standard for NFTs and includes features for managing market items, including listing prices, ownership, and likes.

## Features

- **Minting Tokens**: Users can create new NFTs by minting them with a specified token URI and price.
- **Market Listings**: NFTs can be listed for sale on the marketplace.
- **Buying Tokens**: Users can purchase NFTs by submitting the asking price.
- **Liking Tokens**: Users can like NFTs, with a limit on how many times a single user can like the same NFT.
- **Fetching Market Items**: Users can view all unsold NFTs available in the marketplace.
- **Fetching User NFTs**: Users can view their own NFTs.

## Contract Address

The NFT Marketplace contract is deployed at the following address:
```0xF2B4378d44eDa5f216393AAEe2016a860bE000e6```


## Changes in the Final Contract

In the final version of the contract, due to some issues with compiling, the following changes were made:

 **Imported `ERC721URIStorage.sol`**: I was getting issue with `_tokenURI` and `_exists` as undefined identifier. To fix it, I added a second parameter `tokenURI` and then further imported `ERC721URIStorage.sol` to resolve this issue.

## Instructions to Run the Project Locally Using Foundry

To run the NFT Marketplace project locally, follow these steps:

1. **Install Foundry**: If you haven't already, install Foundry by following the instructions on the [Foundry GitHub page](https://github.com/foundry-rs/foundry).

2. **Clone the Repository**: Clone the repository containing the NFT Marketplace code.

   ```bash
   git clone https://github.com/a-singh09/nft_contracts/
   cd nft_contracts/
   ```

3. **Install Dependencies**: Ensure that all dependencies are installed. You can use the following command:

   ```bash
   forge install
   ```

4. **Compile the Contracts**: Compile the smart contracts using the following command:

   ```bash
   forge build
   ```

5. **Run Tests**: If you have tests written for the smart contracts, you can run them using:

   ```bash
   forge test
   ```

6. **Deploy the Contract**: To deploy the NFT Marketplace contract, use the provided deployment script. Make sure to configure your environment for deployment.

   ```bash
   forge script script/DeployNFTMarketplace.s.sol:DeployNFTMarketplace --sender <sender-key> --private-key <sender-private-key> --broadcast
   ```

7. **Interact with the Contract**: After deployment, you can interact with the contract using Foundry's console or any Ethereum wallet that supports contract interaction.

## Conclusion

The NFT Marketplace provides a robust platform for users to engage with NFTs in a decentralized manner. With features for minting, buying, and liking NFTs, it aims to enhance the user experience in the growing NFT ecosystem.
