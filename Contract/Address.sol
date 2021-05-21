pragma solidity ^0.5.16;

/**
 * Address库定义isContract函数用于检查指定地址是否为合约地址
 */
library Address {

    /**
     * 判断是否是合约地址
     */
    function isContract(address account) internal view returns (bool) {
        bytes32 codehash;
        bytes32 accountHash = ; //地址
        // solhint-disable-next-line no-inline-assembly
        assembly { codehash := extcodehash(account) }
        return (codehash != 0x0 && codehash != accountHash);
    }
}
