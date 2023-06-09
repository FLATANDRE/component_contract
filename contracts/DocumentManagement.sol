// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.19;

contract DocumentManagement {
    address documentOwner;
    string documentHash = '';
    string documentName = '';

    event Stored(address documentOwner, string documentHash);

    function storeDocument(string memory hash, string memory name) public returns (bool) {
        require(bytes(hash).length > 0,'Document hash must be non-empty');
        documentOwner = msg.sender;
        documentHash = hash;
        documentName = name;
        emit Stored(documentOwner, documentHash);
        return true;
    }

    function getDocumentOwner() public view returns (address) {
        return documentOwner;
    }

    function getDocumentHash() public view returns (string memory) {
        return documentHash;
    }

    function getDocumentName() public view returns (string memory) {
        return documentName;
    }
}