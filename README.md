# Simple NFT

## Description

An app that lets users purchase and transfer NFTs.

## Installation and Setup Instructions

### Prerequisites

- Node (v18 LTS)
- Yarn (v1 or v2+)
- Git

### Clone the Repository

To get started, clone the repository to your local machine:

```bash
git clone https://github.com/dianakocsis/simple-nft
```

### Environment Setup

1. Navigate to the cloned directory:

   ```bash
   cd simple-nft
   ```

2. Copy the .env.example files to create a new .env file and fill in the necessary details:

   ```bash
   cp .env.example .env
   ```

   ```bash
   cd frontend
   cp .env.example .env
   ```

### Environment Setup

1. Install Dependencies

   To install project dependencies, run the following commands:

   ```bash
   yarn install
   cd frontend && yarn install
   cd ..
   ```

2. Start Local Blockchain

   In a new terminal, start the local blockchain:

   ```bash
   yarn chain
   ```

3. Deploy Contracts (In another tab)

   Open another terminal tab and deploy the contracts:

   ```bash
   yarn deploy
   ```

4. Start the Aplication (In another tab)

   Finally, in a new terminal tab, start the application:

   ```bash
   yarn start
   ```

## Usage

Grab funds from the faucet and mint some NFTs

## Testnet Deploy Information

| Contract      | Address Etherscan Link                                                            |
| ------------- | --------------------------------------------------------------------------------- |
| MyCollectible | `https://sepolia.etherscan.io/address/0xA2bb060bB24666Ee392D63b54106aF1e6D3f7f4c` |
