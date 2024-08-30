pragma solidity ^0.8.0;

contract ArtGallery {
    struct ArtPiece {
        address owner;
        string ipfsHash;
        bytes32 proofHash;
    }

    mapping(uint256 => ArtPiece) public artPieces;
    uint256 public totalArtPieces;

    // Event emitted when a new art piece is uploaded
    event ArtPieceUploaded(uint256 indexed artPieceId, address owner);

    // Event emitted when ownership is transferred
    event OwnershipTransferred(uint256 indexed artPieceId, address newOwner);

    function uploadArt(string memory _ipfsHash) public {
        uint256 newArtPieceId = totalArtPieces++;
        
        ArtPiece memory newArtPiece = ArtPiece(
            msg.sender,
            _ipfsHash,
            keccak256(abi.encode(msg.sender, _ipfsHash))
        );

        artPieces[newArtPieceId] = newArtPiece;

        emit ArtPieceUploaded(newArtPieceId, msg.sender);
    }

    function transferOwnership(uint256 _artPieceId, address _newOwner) public {
        require(msg.sender == artPieces[_artPieceId].owner, "Only the owner can transfer ownership");
        
        ArtPiece storage artPiece = artPieces[_artPieceId];
        artPiece.owner = _newOwner;
        artPiece.proofHash = keccak256(abi.encode(_newOwner, artPiece.ipfsHash));

        emit OwnershipTransferred(_artPieceId, _newOwner);
    }

    function proveOwnership(uint256 _artPieceId, bytes32 _proofHash) public view returns (bool) {
        ArtPiece memory artPiece = artPieces[_artPieceId];
        
        bytes32 expectedProofHash = keccak256(abi.encode(artPiece.owner, artPiece.ipfsHash));
        
        return expectedProofHash == _proofHash;
    }
}
