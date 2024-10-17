# FundMe

FundMe is a smart contract built with Solidity that allows users to contribute funds. It integrates with price feeds using Chainlink to convert amounts to a stable currency value like USD.

## Project Structure

- `FundMe.sol`: Main contract for managing the funding process.
- `AggregatorV3Interface.sol`: Interface for interacting with Chainlink price feeds.
- `PriceConverter.sol`: Library for converting prices using Chainlink feeds.
- `LICENSE`: Licensing information for the project.

## Prerequisites

- [Remix IDE](https://remix.ethereum.org/) (for deployment and testing)
- A web3-compatible wallet like [MetaMask](https://metamask.io/)

## How to Run on Remix IDE

1. **Open Remix IDE**: Go to [Remix](https://remix.ethereum.org/).

2. **Upload Files**:
   - Click on the "File Explorers" panel on the left.
   - Create a new folder (e.g., `contracts`) and upload the following files:
     - `FundMe.sol`
     - `AggregatorV3Interface.sol`
     - `PriceConverter.sol`

3. **Compile the Contracts**:
   - Navigate to the "Solidity Compiler" tab on the left.
   - Select the Solidity version that matches your contracts (e.g., `0.8.x`).
   - Click on "Compile `FundMe.sol`".

4. **Deploy the Contract**:
   - Go to the "Deploy & Run Transactions" tab.
   - Select the environment (e.g., `Injected Web3` if using MetaMask).
   - Choose the `FundMe` contract from the dropdown menu.
   - Click on "Deploy" and confirm the transaction in MetaMask.

5. **Interact with the Contract**:
   - Once deployed, you can interact with the contract using the functions listed in the "Deployed Contracts" section.
   - Fund the contract, withdraw funds, or view balance directly through Remix.

## Contributing

Feel free to fork this repository, make changes, and create a pull request. For major changes, please open an issue to discuss what you would like to change.

## License

This project is licensed under the terms of the MIT license. See the `LICENSE` file for more details.

