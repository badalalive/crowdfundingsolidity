pragma solidity ^0.8.0;

contract CrowdFunding {
    mapping(address => uint) public contributors;
    address public manager;
    uint public target;
    uint public deadline;
    uint public noOfContributors;
    uint public raisedAmount;
    uint public minContribution;
    constructor (uint _target, uint _deadline, uint _minContribution)
    {
        manager = _manager;
        target = _target;
        deadline = block.timestamp + _deadline;
        manager = msg.sender;
    }

    function sendContribute() public payable {
        require(block.timestamp < deadline,"Deadline has passed");
        require(msg.value > minContribution, "Minimum Contribution Require" + minContribution);

    }

}
