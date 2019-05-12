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

  function addCandidate (string _name) private {
    candidatesCount ++;
    candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
  }

}
