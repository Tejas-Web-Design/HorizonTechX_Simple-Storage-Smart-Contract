// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title SimpleStorage
 * @author Tejasri Konidena
 * @notice A beginner-friendly smart contract that stores an integer value.
 * @dev Demonstrates state variables, public visibility, and state-changing functions.
 */
contract SimpleStorage {

    /// @notice Stores the current number.
    uint256 public number;

    /**
     * @notice Initializes the contract with a default value of 0.
     */
    constructor() {
        number = 0;
    }

    /**
     * @notice Increases the stored number by one.
     */
    function increment() public {
        number += 1;
    }

    /**
     * @notice Decreases the stored number by one.
     * @dev Prevents the value from going below zero.
     */
    function decrement() public {
        require(number > 0, "Number cannot be less than zero");
        number -= 1;
    }
}