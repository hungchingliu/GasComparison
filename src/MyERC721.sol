// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "openzeppelin-contracts/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

contract MyERC721 is ERC721Enumerable {
    constructor() ERC721("MyERC721", "NFT") {
    }
}