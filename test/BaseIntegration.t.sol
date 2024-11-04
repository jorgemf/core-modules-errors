// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import { BaseTest } from "./Base.t.sol";
import {
    ModuleKitHelpers,
    ModuleKitUserOp,
    AccountInstance,
    RhinestoneModuleKit
} from "modulekit/ModuleKit.sol";

abstract contract BaseIntegrationTest is RhinestoneModuleKit, BaseTest {
    using ModuleKitHelpers for *;
    using ModuleKitUserOp for *;

    /*//////////////////////////////////////////////////////////////////////////
                                    CONTRACTS
    //////////////////////////////////////////////////////////////////////////*/

    AccountInstance internal instance;

    /*//////////////////////////////////////////////////////////////////////////
                                      SETUP
    //////////////////////////////////////////////////////////////////////////*/

    function setUp() public virtual override {
        BaseTest.setUp();
        instance = makeAccountInstance("instance");
        vm.deal(address(instance.account), 10 ether);
    }
}
