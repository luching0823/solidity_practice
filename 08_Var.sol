pragma solidity 0.4.22;

contract Var {
    function test1() public pure returns(int8 value){ 
        int8 number = 10;
        var auto = number;
        return auto;
    }
    
    function test2() public pure returns(uint value){ 
        uint8 x = 10;
        var y = x;
        for( y=0; y < 1000; y++){
            //do something
        }
        return y;
    }
}

