pragma solidity ˆ0.7.4;
///OCOwnerships.sol
contract OConsentOwned {
    address public ownerCurr;
    event LogTransfer(address indexed
    ownerPrev, address indexed ownerNew);
    modifier ownerSole() {
        require (msg.sender == ownerCurr);
        _;
    }
    function OConsentOwned() public {
        ownerCurr = msg.sender;
    }
    function transferOwnership(address ownerNew) public
    ownerSole {
        require (ownerNew != address(0));
        LogTransfer(ownerCurr, ownerNew);
        ownerCurr = ownerNew;
    }
}