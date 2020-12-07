pragma solidity ^0.4.0;

contract OConsentDataStorage {
    function OCDataStorage(){
        ///
    }

    mapping (bytes32 => uint) uintDataSubjectStorage;

    function getDataAddressUintValue(bytes32 key) public constant
    returns (uint) {
        return uintDataSubjectStorage[key];
    }

    function setDataAddressUintValue(bytes32 key, uint value) public {
        uintDataSubjectStorage[key] = value;
    }
}
