// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

import "erc721a/contracts/ERC721A.sol";

contract UniqueCricketerNFT is ERC721A {
    address public contractOwner;

    uint256 public maxMintQuantity = 5;
    string public baseURI =
        "https://gateway.pinata.cloud/ipfs/QmaJxLS87ahzfD2benZDpPJCoDB4C9royZGgfG3L5EUvew";
    string public promptDescription = "A cricketer hitting six";

    constructor() ERC721A("UniqueCricketerNFT", "UCN") {
        contractOwner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == contractOwner, "Only the contract owner can perform this action!");
        _;
    }

    function mintNFT(uint256 quantity) external payable onlyOwner {
        require(
            totalSupply() + quantity <= maxMintQuantity,
            "You can not mint more than 5"
        );
        _mint(msg.sender, quantity);
    }

    function _baseURI() internal view override returns (string memory) {
        return baseURI;
    }

    function getPromptDescription() external view returns (string memory) {
        return promptDescription;
    }

    function updateBaseURI(string calldata newBaseURI) external onlyOwner {
        baseURI = newBaseURI;
    }
}
