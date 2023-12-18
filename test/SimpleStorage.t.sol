//SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

import "forge-std/Test.sol";
import "../src/SimpleStorage.sol";
 
contract TestSimpleStorage is Test {
    address user1 = makeAddr("user1");
    address user2 = makeAddr("user2");
    SimpleStorage simpleStorage;
 
    function setUp() public {
        simpleStorage = new SimpleStorage();
    }
    
    function testItStoresAValue(uint256 number) public {
        simpleStorage.set(number);
        uint expected = number;
        assertEq(simpleStorage.get(), expected);
    }
}
