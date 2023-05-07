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
        myERC721A.mint(alice, 10);
    }


    function test_transfer() public {
        vm.prank(alice);
        myERC721A.transferFrom(alice, bob, 0);
    }

    function test_approve() public {
        vm.prank(alice);
        myERC721A.approve(bob, 0);
    }

}
