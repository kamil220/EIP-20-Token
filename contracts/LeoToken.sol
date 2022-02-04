//SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.0;

import 'hardhat/console.sol';

contract LeoToken {

    string public name = 'Leocode Token';
    string public symbol = 'LEO';
    uint8 public decimals = 18;

    /* Start Methods */
    function totalSupply() public view returns ( uint256 ) {
        return 100_000 * ( 10 ** decimals );
    }

    function balanceOf( address _owner ) public view returns ( uint256 balance );
    function transfer( address _to, uint256 __value ) public returns ( bool success );
    function transferFrom( address _from, address _to, uint256 _value ) public returns ( bool success );
    function approve( address _spender, uint256 _value ) public returns ( bool success );
    function allowance( address _owner, address _spender ) public view returns ( uint256 remaining );

    /* Start Events */
    event Transfer( address indexed _from, address indexed _to, uint256 _value );
    event Approval( address indexed _owner, address indexed _spender, uint256 _value );
}
