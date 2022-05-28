//jalase 2 class solidity

pragma solidity 0.8.14;

contract artin {

    string walletAddress = "0x62ascjaj412jkA78225tqfaGFASCASFHGr";

    struct userdata{
        string ownerWallet;
    }
    
    mapping(address => userdata) private _UsersData;


    function yourName(string memory _ownerWallet) public {
        _UsersData[msg.sender].ownerWallet = _ownerWallet;
    }

    

    function showAdressWallet() public view returns(string memory){
        return walletAddress;
    } 
 }
