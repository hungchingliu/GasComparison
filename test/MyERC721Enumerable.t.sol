// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/MyERC721Enumerable.sol";

contract MyERC721EnumerableTest is Test {
    MyERC721Enumerable public myERC721Enumerable;
    address alice = makeAddr("alice");
    address bob = makeAddr("bob");
    
    function setUp() public {
        myERC721Enumerable = new MyERC721Enumerable();
        for(uint256 i = 0; i < 10; ++i){
            myERC721Enumerable.mint(alice, i);
        }
    }

    function test_transfer() public {
        uint256 tokenId = 0;
        vm.prank(alice);
        myERC721Enumerable.transferFrom(alice, bob, tokenId);
    }

    function test_approve() public {
        uint256 tokenId = 1;
        vm.prank(alice);
        myERC721Enumerable.approve(bob, tokenId);
    }

}
