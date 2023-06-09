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
        uint256 amount = 10;
        for(uint256 i = 0; i < amount; ++i){
            myERC721Enumerable.mint(alice, i);
        }
        assertEq(myERC721Enumerable.balanceOf(alice), amount);
    }

    function test_transfer() public {
        uint256 tokenId = 0;
        vm.prank(alice);
        myERC721Enumerable.transferFrom(alice, bob, tokenId);
        assertEq(myERC721Enumerable.balanceOf(bob), 1);
    }

    function test_approve() public {
        uint256 tokenId = 1;
        vm.prank(alice);
        myERC721Enumerable.approve(bob, tokenId);
        assertEq(myERC721Enumerable.getApproved(tokenId), bob);
    }

}
