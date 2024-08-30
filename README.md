# Decentralized Digital Art Gallery

A blockchain-based application for creating, sharing, and proving ownership of digital art pieces using IPFS for decentralized storage.

## Table of Contents

- [Decentralized Digital Art Gallery](#decentralized-digital-art-gallery)
  - [Table of Contents](#table-of-contents)
  - [Project Overview](#project-overview)
  - [Features](#features)
  - [Technical Details](#technical-details)
    - [Smart Contract](#smart-contract)
    - [IPFS Integration](#ipfs-integration)
    - [Frontend](#frontend)
  - [Getting Started](#getting-started)
  - [Contributing](#contributing)

## Project Overview

Decentralized Digital Art Gallery is a blockchain-based application that allows artists to upload, share, and prove ownership of their digital art pieces. The application uses IPFS for decentralized storage of art pieces and Ethereum smart contracts for managing ownership and provenance.

## Features

- Decentralized storage of digital art pieces using IPFS
- Blockchain-based ownership management
- Ability to prove ownership without revealing the artwork itself
- Transferable ownership of art pieces
- Event emissions for tracking important actions

## Technical Details

### Smart Contract

The core functionality is implemented in the `ArtGallery.sol` smart contract:

- Uses Solidity ^0.8.0
- Implements struct `ArtPiece` to represent digital art pieces
- Provides functions for uploading art pieces, transferring ownership, and proving ownership

### IPFS Integration

IPFS is used for decentralized storage of digital art pieces:

- Utilizes `ipfs-http-client` library for interacting with IPFS nodes
- Stores files locally and returns IPFS CID for reference

### Frontend

A React-based frontend is planned for user interaction:

- Implements utility functions for IPFS operations
- Will provide a user interface for uploading, viewing, and managing digital art pieces

## Getting Started

To get started with the project:

1. Clone the repository
2. Install dependencies:

```
npm install
```

3. Compile the smart contract:

```
truffle compile
```

4. Migrate the contract to a local Ethereum network (e.g Ganache):

```
truffle migrate --network ganache
```

## Contributing

Contributions are welcome! Please submit pull requests with clear descriptions of changes made.
