// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Warehouse {
    // Define a struct to represent a product, similar to a tuple
    struct Product {
        uint256 id;
        string name;
        uint256 price;
        bool inStock;
    }

    // Mapping to store products by their ID
    mapping(uint256 => Product) private products;

    // Function to add a new product
    function addProduct(uint256 id, string memory name, uint256 price, bool inStock) public {
        //? TODO: Create a new product and store it in the `products` mapping using `id` as the key.
        //? Hint: Use the `Product` struct to create a new product instance.
        // ...
    }

    // Function to get product details
    function getProduct(uint256 id) public view returns (uint256, string memory, uint256, bool) {
        //? TODO: Retrieve the product from the `products` mapping using `id` and return its details.
        //? Hint: Return the values in the order: id, name, price, inStock.
        // ...
    }

    // Function to update the stock status of a product
    function updateStock(uint256 id, bool newStockStatus) public {
        //? TODO: Update the `inStock` status of the specified product.
        //? Hint: Access the product via the `products` mapping and update its `inStock` attribute.
        // ...
    }
}
