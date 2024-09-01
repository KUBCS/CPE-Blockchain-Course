// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Counter {
    // State variable to store the count
    //? TODO: Declare a state variable named `count` to store the count value.
    //? Hint: What data type would you use to store a positive integer?
    // ...

    // Function to initialize the count
    //? TODO: (Optional) Create a constructor function to initialize the `count` variable.
    //? Hint: Do you need a constructor to set the initial value, or can it start at the default value?
    // ...

    // Function to increment the count
    function increment() public {
        //? TODO: Write the code to increase the `count` variable by 1.
        //? Hint: What operator would you use to add 1 to a variable?
        // ...
    }

    // Function to decrement the count
    function decrement() public {
        //? TODO: Write the code to decrease the `count` variable by 1.
        //? Hint: How can you ensure that `count` does not go below zero? What statement can you use for that?
        // ...
    }

    // Function to get the current count
    function getCount() public view returns (...) {
        //? TODO: Complete the function to return the current value of the `count` variable.
        //? Hint: What type should the return value be?
        // ...
    }
}
