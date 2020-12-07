pragma solidity ˆ0.7.4;
import "./OCOwnerships.sol";

contract OConsentProxyRelay is OConsentOwned {
    address public currVer;

    function OConsentProxyRelay(address initialAddress) public {
        currVer = initialAddress;
        currOwner = msg.sender;
    }

    function updateContract(address newProxyVer) public
    ownerSole() {
        currVer = newProxyVer;
    }

    /// Use this as a fallback
    function() public {
        require(currVer.delegatecall(msg.data));
    }
}
