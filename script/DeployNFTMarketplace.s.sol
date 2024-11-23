// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import {Script} from "forge-std/Script.sol";
import {NFTMarketplace} from "../src/NFTMarketplace.sol";

contract DeployNFTMarketplace is Script {
    function run() public returns (NFTMarketplace) {
        // Start broadcasting transactions
        vm.startBroadcast();

        // Deploy the NFT Marketplace contract
        NFTMarketplace marketplace = new NFTMarketplace();

        // Stop broadcasting transactions
        vm.stopBroadcast();

        return marketplace;
    }
} 