// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.19;

contract DocumentManagement {
    address public documentOwner;
    string public documentHash = '';
    string public documentName = '';

    event Stored(address documentOwner, string documentHash);

    function storeDocument(string memory hash, string memory name) public returns (bool) {
        require(bytes(hash).length > 0,'Document hash must be non-empty');
        documentOwner = msg.sender;
        documentHash = hash;
        documentName = name;
        emit Stored(documentOwner, documentHash);
        return true;
    }
}