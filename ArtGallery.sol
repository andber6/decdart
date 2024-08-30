pragma solidity ^0.8.0;

contract ArtGallery {
    struct ArtPiece {
        address owner;
        string ipfsHash;
        bytes32 proofHash;
    }

    mapping(uint256 => ArtPiece) public artPieces;
    uint256 public totalArtPieces;

    function uploadArt(string memory _ipfsHash) public {
        // Implement logic to create a new art piece
    }

    function transferOwnership(uint256 _artPieceId, address _newOwner) public {
        // Implement logic to transfer ownership
    }

    function proveOwnership(uint256 _artPieceId, bytes32 _proofHash) public view returns (bool) {
        // Implement simple hash-based verification
        return artPieces[_artPieceId].proofHash == _proofHash;
    }
}
