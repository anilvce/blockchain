// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MaxNumber {
    uint[] public numbers;

    // Function to add a number to the list
    function addNumber(uint _number) public {
        numbers.push(_number);
    }

    // Function to find the maximum number
    function findMax() public view returns (uint) {
        require(numbers.length > 0, "No numbers provided.");
        uint max = numbers[0];
        for (uint i = 1; i < numbers.length; i++) {
            if (numbers[i] > max) {
                max = numbers[i];
            }
        }
        return max;
    }
}
