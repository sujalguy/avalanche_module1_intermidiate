// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract myContract {
    uint256 public myrupee ;

    function setmyrupee(uint256 newrupee) public {
        // Using require() to validate a condition
        //if this condition true the 
        require(newrupee > 100, "Value must be greater than 100");

        // Using assert() to ensure an internal condition
        //and to check the invariants
        assert(newrupee < 1000);

        // Setting the value
        if(newrupee == 150){
            // Using revert() to revert the transaction
        revert("This operation is not allowed"); 
        }
        myrupee = newrupee;
        
        
    }

    
}
