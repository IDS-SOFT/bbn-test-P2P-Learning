//SPDX-License-identifier:GPL-3.0

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract P2PLearning {
    // State variables
    address public teacher;
    address public student;
    uint256 public fee;
    string public subject;

    // Constructor
    constructor(address _teacher, uint256 _fee, string memory _subject) {
        teacher = _teacher;
        fee = _fee;
        subject = _subject;
    }

    // Functions
    function registerAsStudent() public payable {
        require(msg.value == fee, "Please pay the registration fee");
        student = msg.sender;
    }

    function getTeacher() public view returns (address) {
        return teacher;
    }

    function getStudent() public view returns (address) {
        return student;
    }

    function getFee() public view returns (uint256) {
        return fee;
    }

    function getSubject() public view returns (string memory) {
        return subject;
    }
}