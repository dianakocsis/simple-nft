// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

/// @title MyCollectible
/// @notice An ERC721 token with metadata and enumeration extensions
contract MyCollectible is ERC721, ERC721Enumerable, ERC721URIStorage, Ownable {
	using Counters for Counters.Counter;

	Counters.Counter public tokenIdCounter;

	/// @notice Constructs the MyCollectible ERC-721 contract
	constructor() ERC721("MyCollectible", "YCB") {}

	/// @notice Returns the base URI for the token
	function _baseURI() internal pure override returns (string memory) {
		return "https://ipfs.io/ipfs/";
	}

	/// @notice Mints a new token
	/// @param to The address of the future owner of the token
	/// @param uri The token URI
	/// @return The token ID of the newly minted token
	function mintItem(address to, string memory uri) public returns (uint256) {
		tokenIdCounter.increment();
		uint256 tokenId = tokenIdCounter.current();
		_safeMint(to, tokenId);
		_setTokenURI(tokenId, uri);
		return tokenId;
	}

	/// @notice Overrides the _beforeTokenTransfer function from ERC721 and ERC721Enumerable
	///         then calls the _beforeTokenTransfer function from ERC721Enumerable
	function _beforeTokenTransfer(
		address from,
		address to,
		uint256 tokenId
	) internal override(ERC721, ERC721Enumerable) {
		super._beforeTokenTransfer(from, to, tokenId);
	}

	/// @notice Overrides the _burn function from ERC721 and ERC721URIStorage
	/// 	   then calls the _burn function from ERC721URIStorage
	function _burn(
		uint256 tokenId
	) internal override(ERC721, ERC721URIStorage) {
		super._burn(tokenId);
	}

	/// @notice Overrides the tokenURI function from ERC721 and ERC721URIStorage
	///         then calls the tokenURI function from ERC721URIStorage
	function tokenURI(
		uint256 tokenId
	) public view override(ERC721, ERC721URIStorage) returns (string memory) {
		return super.tokenURI(tokenId);
	}

	/// @notice Overrides the supportsInterface function from ERC721 and ERC721Enumerable
	///         then calls the supportsInterface function from ERC721Enumerable
	function supportsInterface(
		bytes4 interfaceId
	) public view override(ERC721, ERC721Enumerable) returns (bool) {
		return super.supportsInterface(interfaceId);
	}
}
