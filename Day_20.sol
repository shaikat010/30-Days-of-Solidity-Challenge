// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

//Task: Write a function that returns the second largest element in an array.

contract Day20{
    function secondMax(int256[] memory array, uint256 size)
    public
    pure
    returns(int256)
    {
        for(uint256 step=0; step < size - 1;++step){
            int256 swapped = 0;

            for(uint256 i = 0; i < size-step-1;++i){
                if(array[i] > array[i+1]){
                    int256 temp;
                    temp = array[i];
                    array[i] = array[i+1];
                    array[i + 1] = temp;

                    swapped = 1;
                }
            }

            if(swapped == 0){
                break;
            }
        }

        return array[size -2];
    }
}