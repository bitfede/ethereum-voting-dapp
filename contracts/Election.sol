pragma solidity ^0.5.0;

contract Election {
  //Read/Write candidate
  string public candidate;

  //constructor
  constructor() public {
    candidate = "Candidate 1";
  }
}
