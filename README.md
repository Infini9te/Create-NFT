# Create-NFT
## NFT Collection on Ethereum Goerli 
This project aims to create and deploy a 5-item NFT collection using DALLE 2 or Midjourney, store the NFT metadata on IPFS using pinata.cloud, and deploy an ERC721 contract to the Goerli Ethereum Testnet. Additionally, the project includes mapping the NFT collection to the Polygon network using token mapper for better visualization and efficient transfers between Ethereum and Polygon.

## Requirements
DALLE 2 or Midjourney for generating the NFT collection.
IPFS with pinata.cloud for storing NFT metadata.
Hardhat for scripting and deploying contracts.
Polygon token mapper for mapping the NFTs to the Polygon network.
FxPortal Bridge for batch transferring NFTs from Ethereum to Polygon Mumbai.

## Smart Contract Details
The smart contract, deployed on the Goerli Ethereum Testnet, is an ERC721 contract named "UniqueCricketerNFT" (Unique Cricketer NFT). It allows the contract owner to mint NFTs, set the base URI for NFT metadata, and has a function to retrieve the prompt used to generate the NFT images.

## File Structure
contracts/: Contains the smart contract "UniqueCricketerNFT.sol".
scripts/: Contains Hardhat scripts for batch minting and batch transferring NFTs.
art/: Contains generated NFT images.
hardhat.config.js: Configuration file for Hardhat.
.env: Environment variables for storing API keys, mnemonic, etc.

##  Procedure
Install Node.js and npm.
Install Hardhat globally:
### Copy code
npm install -g hardhat
npm install
Configure your environment variables by creating a .env file (use .env.example as a template).
Generate the NFT collection using DALLE 2 or Midjourney and store the metadata on IPFS using pinata.cloud.
### Deploy the ERC721 contract to the Goerli Ethereum Testnet:
npx hardhat run scripts/deploy.js --network goerli

Map your NFT collection to the Polygon network using token mapper.
Batch Minting and Batch Transfer
### To batch mint the NFTs, use the following command:

npx hardhat run scripts/batch-mint.js --network goerli
 
 ### To batch transfer the NFTs from Ethereum to Polygon Mumbai using FxPortal Bridge, use the following command:

npx hardhat run scripts/batch-transfer.js --network goerli

Testing on Polygon Mumbai

### After transferring the NFTs to Polygon Mumbai, you can test the balance of your NFTs using the following command:
npx hardhat run scripts/test-balance.js --network mumbai
