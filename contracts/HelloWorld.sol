// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.9;

contract HelloWorld {
    function hello(string memory name)
    public pure returns (string memory){
        bytes memory h = bytes("Hello ");
        bytes memory n = bytes(name);
        bytes memory b = new bytes(h.length + n.length);
        for(uint i = 0; i < h.length; i++){
            b[i] = h[i];
        }
        for(uint i = 0; i < n.length; i++){
            b[i + h.length] = n[i];
        }
        
        return string(b);
    }
}