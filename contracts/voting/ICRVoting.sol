pragma solidity ^0.5.8;

import "./ICRVotingOwner.sol";


interface ICRVoting {
    function init(ICRVotingOwner owner) external;
    function getOwner() external view returns (address);
    function create(uint256 voteId, uint8 possibleOutcomes) external;
    function getWinningOutcome(uint256 voteId) external view returns (uint8);
    function getOutcomeTally(uint256 voteId, uint8 outcome) external view returns (uint256);
    function isValidOutcome(uint256 voteId, uint8 outcome) external view returns (bool);
    function getVoterOutcome(uint256 voteId, address voter) external view returns (uint8);
    function hasVotedInFavorOf(uint256 voteId, uint8 outcome, address voter) external view returns (bool);
    function getVotersInFavorOf(uint256 voteId, uint8 outcome, address[] calldata voters) external view returns (bool[] memory);
}
