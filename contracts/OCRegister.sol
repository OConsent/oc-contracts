pragma solidity ^0.4.0;

import "./OCOwnerships.sol";
contract OConsentRegister is OConsentOwned {
    address linkedContract;
    address[] previousLinks; /// list of all previously linked contracts
    function OConsentRegister() public {
        owner = msg.sender;
    }
    function changeLink(address newLink) public
    ownerSole() returns (bool) {
        if(newLink != linkedContract) {
            previousLinks.push(linkedContract);
            linkedContract = newLink; /// add new contract as the latest
            return true;
        }
        return false;
    }
}