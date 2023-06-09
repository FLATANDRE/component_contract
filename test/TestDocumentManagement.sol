// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.19;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/DocumentManagement.sol";


contract TestDocumentManagement {
    DocumentManagement docMgmt = DocumentManagement(DeployedAddresses.DocumentManagement());
    string docHash = 'sgsjdghsdkljh32j5sdgfhsdlkgsdg';
    string docName = 'testDoc';
    address docOwner = address(this);

    function testStoreDocument() public {
        bool isStored = docMgmt.storeDocument(docHash,docName);
        Assert.equal(isStored, true, "Document not stored");
    }

    function testDocumentHash() public {
        string memory hash = docMgmt.getDocumentHash();
        Assert.equal(hash,docHash,'Document hash not equal');
    }

    function testDocumentName() public {
        string memory name = docMgmt.getDocumentName();
        Assert.equal(name,docName,'Document name not equal');
    }

    function testDocumentOwner() public {
        address owner = docMgmt.getDocumentOwner();
        Assert.equal(owner,docOwner,'Document owner not equal');
    }


}