pragma solidity 0.4.22;

contract Enum {
    enum Month{JAN,FEB,MAR,APR,MAY,JUN,JUL,AUG,SEP,OCT,NOV,DEC} //沒有分號
    Month choice;
    
    function setMonth( Month value) public{ 
        choice = value;
    }
    
    function getMonth() public view returns(Month){ 
        return choice;
    }
   
}