# ERC 7574 errors added

1. AutoSavings.sol:uninstall `if (length > MAX_TOKENS) return -1;` (it should rever not return)
2. ColdStorageFlasloan.sol:isModuleType `return typeID == TYPE_HOOK;` (function overwrites the return value)
3. ColdStorageHook.sol:onUninstall `function uninstall(bytes calldata) external override {` (function rennamed)
4. DeadmanSwitch.sol:validateUserOp `hash: ECDSA.toEthSignedMessageHash(userOp.hash),` (changed hash by user)
5. RegistryHook.sol:isModuleType `return typeID == TYPE_EXECUTOR;` (function overwrites the return value)
6. OtherOwnableValdiator2.sol:validateUserOp `bool isValid = _validateSignatureWithConfig(userOp.sender, userOp.Hash, userOp.signature);` (should be using userOpHash instead of userOp.Hash)
7. OtherHookMultiPlexer2.sol:preCheck `hooks.join($config.sigHooks[HookType.DELEGATECALL].sigHooks[callDataSelector]);` (it should be a SIG hook, not a delegate call)
8. OtherOwnableValdiator2.sol:onUninstall (removed how the owners are cleared)