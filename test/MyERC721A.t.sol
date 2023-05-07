// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/MyERC721A.sol";

contract MyERC721ATest is Test {
    MyERC721A public myERC721A;
    address alice = makeAddr("alice");
    address bob = makeAddr("bob");
    
    function setUp() public {
        myERC721A = new MyERC721A();
        uint256 amount = 10;
        myERC721A.mint(alice, amount);
        assertEq(myERC721A.balanceOf(alice), amount);
    }


    function test_transfer() public {
        vm.prank(alice);
        uint256 tokenId = 0;
        myERC721A.transferFrom(alice, bob, tokenId);
        assertEq(myERC721A.balanceOf(bob), 1);
    }

    function test_approve() public {
        vm.prank(alice);
        uint256 tokenId = 0;
        myERC721A.approve(bob, tokenId);
        assertEq(myERC721A.getApproved(tokenId), bob);
    }

}
