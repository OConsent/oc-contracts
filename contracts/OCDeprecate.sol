pragma solidity ˆ0.7.4;
contract OConsentAutoDeprecate {
    uint expiresIn;
    function OConsentAutoDeprecate(uint _days) public {
        expiresIn = now + _days * 180 days;
    }
    function expiredAlready() internal view returns (bool) {
        return now > expiresIn;
    }
    modifier upcomingDeprecation() {
        require(!expiredAlready());
        _;
    }
    modifier postDeprecation() {
        require(expiredAlready());
        _;
    }
    function grantConsent() public payable upcomingDeprecation {
        // Code to execute
    }
    function withdrawConsent() public view postDeprecation {
        // Code to execute
    }
}
