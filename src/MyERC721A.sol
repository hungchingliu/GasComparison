// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "ERC721A/ERC721A.sol";

contract MyERC721A is ERC721A {
    constructor() ERC721A("MyERC721A", "NFT") {
    }

    function mint(address to, uint256 amount) external {
        _mint(to, amount);
    }
}