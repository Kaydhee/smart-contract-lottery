// // SPDX-License-Identifier: MIT
// pragma solidity ^0.8.19;
// import {Test} from "forge-std/Test.sol";
// import {Raffle} from "../../src/Raffle.sol";

// contract Interactions is Test {
//     Raffle raffle;
//     address player1 = address(0x1);
//     address player2 = address(0x2);

//     // Declare and initialize the required variables
//   uint256 entranceFee;
//     uint256 interval;
//     address vrfCoordinator;
//     bytes32 gasLane;
//     uint256 subscriptionId;
//     uint32 callbackGasLimit;

//     function setUp() public {
//         raffle = new Raffle(
//             entranceFee,
//             interval,
//             vrfCoordinator,
//             gasLane,
//             callbackGasLimit,
//             subscriptionId
//         );
//     }

//     function testMultiplePlayersCanEnterAndWinnerGetsPrize() public {
//         // Simulate two players entering
//         vm.deal(player1, 1 ether);
//         vm.deal(player2, 1 ether);

//         vm.prank(player1);
//         raffle.enterRaffle{value: 0.1 ether}();

//         vm.prank(player2);
//         raffle.enterRaffle{value: 0.1 ether}();

//         // Simulate picking a winner (you may need to mock randomness)
//         // For example, call performUpkeep and fulfillRandomWords if using Chainlink VRF
//         // This part depends on your implementation

//         // Assert: winner received the prize, raffle state reset, etc.
//         // Example:
//         // assertEq(raffle.recentWinner(), player1 or player2);
//         // assertEq(address(raffle).balance, 0);
//     }

//     function testCannotEnterWithInsufficientETH() public {
//         vm.deal(player1, 1 ether);
//         vm.prank(player1);
//         vm.expectRevert();
//         raffle.enterRaffle{value: 0.001 ether}();
//     }

//     // Add more integration scenarios as needed
// }