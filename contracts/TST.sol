pragma solidity >=0.4.0 <0.7.0;

import './StandardToken.sol';

contract TST is StandardToken {
    string public name = 'CHM4 Test Token';
    string public symbol = 'CHM4';
    uint public decimals = 0;

    function showMeTheMoney(address _to, uint256 _value) public {
        totalSupply += _value;
        balances[_to] += _value;
        emit Transfer(address(0), _to, _value);
    }
}
