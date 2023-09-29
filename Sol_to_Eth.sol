pragma solidity ^0.8.0;

contract SolToEthConverter {

    // The exchange rate of SOL to ETH
    uint256 public exchangeRate;

    constructor(uint256 _exchangeRate) {
        exchangeRate = _exchangeRate;
    }

    // Converts a given amount of SOL to ETH
    function convertSolToEth(uint256 _solAmount) public view returns (uint256) {
        return _solAmount * exchangeRate;
    }

    // Converts a given amount of ETH to SOL
    function convertEthToSol(uint256 _ethAmount) public view returns (uint256) {
        return _ethAmount / exchangeRate;
    }
}
