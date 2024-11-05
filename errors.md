

# ERC 7574 errors added

1. AutoSavings.sol:uninstall `if (length > MAX_TOKENS) return -1;` (it should rever not return)
2. ColdStorage.sol:isModuleType `return typeID == TYPE_HOOK;` (function overwrites the return value)
3. ColdStorageHook.sol:onUninstall `function uninstall(bytes calldata) external override {` (function rennamed)
4. DeadmanSwitch.sol:validateUserOp `hash: ECDSA.toEthSignedMessageHash(user),` (changed hash by user)