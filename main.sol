// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract OnChainSnake {
    struct Player {
        uint256 score;
        uint256 lastMove;
    }
    
    mapping(address => Player) public players;
    address public highScoreHolder;
    uint256 public highScore;

    event MoveMade(address indexed player, uint256 newScore);
    event NewHighScore(address indexed player, uint256 score);

    function move(uint256 points) external {
        require(points > 0, "Points must be greater than zero");
        
        Player storage player = players[msg.sender];
        player.score += points;
        player.lastMove = block.timestamp;
        
        emit MoveMade(msg.sender, player.score);
        
        if (player.score > highScore) {
            highScore = player.score;
            highScoreHolder = msg.sender;
            emit NewHighScore(msg.sender, highScore);
        }
    }
    
    function getScore(address player) external view returns (uint256) {
        return players[player].score;
    }
}
