// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Day12{
    function reverseDigit(uint n) public pure returns(uint){
        uint256 reverse = 0;
        uint256 remainder;

        while(n != 0){
            remainder = n%10;
            reverse = reverse *10 + remainder;
            n = n/10;
        }

        return reverse;
    }
}




