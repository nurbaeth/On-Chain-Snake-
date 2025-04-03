# 🐍 On-Chain Snake

**On-Chain Snake** is a decentralized version of the classic Snake game running on the Ethereum blockchain. Players control the snake by sending transactions, collect food, and compete for the highest score. Every move is recorded on-chain, and the highest score is stored in the smart contract.

## 🚀 Features
- 🕹 **Blockchain-based gameplay** – Control the snake by sending transactions.
- 🏆 **On-chain high score** – Compete for the best score, stored on the Ethereum network.
- 🎉 **Events & rewards** – Emits events for each move and high score updates.

## 🔧 Smart Contract 
The game is powered by a Solidity smart contract that records player moves and keeps track of the highest score.

### 📜 Contract Functions 
- `move(uint256 points)` – Increases the player's score by the given points.
- `getScore(address player) view` – Returns the player's current score.    
 
## 📥 Installation & Deployment   
### Prerequisites
- [Node.js](https://nodejs.org/) & [Hardhat](https://hardhat.org/)
- Ethereum testnet (e.g., Sepolia) & Metamask wallet

### Setup
```bash
git clone https://github.com/your-repo/on-chain-snake.git
cd on-chain-snake
npm install
```

### Deploy to Ethereum Testnet
1. Configure your `.env` file with a private key and RPC URL.
2. Run:
```bash
npx hardhat compile
npx hardhat run scripts/deploy.js --network sepolia
```

## 📜 License
This project is licensed under the MIT License.
