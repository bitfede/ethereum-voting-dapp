pragma solidity ^0.5.0;

contract Election {

  //model a candidate
  struct Candidate {
    uint sid;
    string name;
    uint voteCount;
  }

  //Read/Write candidates
  mapping(uint => Candidate) public candidates;

  //store candidates count
  uint public candidatesCount;

  //constructor
  constructor() public {
    addCandidate("Candidate 1");
    addCandidate("Candidate 2");
  }

  //private function (can only be called inside the contract)
  function addCandidate (string memory _name) private {
    candidatesCount++;
    candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
  }


}
