pragma solidity 0.4.22;

contract Convert {

   function test1() public pure {
       uint8 len8 = 10;
       uint128 len128 = len8;	//len8為int型別，可以隱式轉換為uint128型別
   }
   
   function test2() public pure returns( uint128) {
       int8 len8 = -10;
       uint128 len128 = len8;	//len8為int型別，不能隱式轉換為uint128型別
       //uint128 len128 = uint128(len8);	//len8為int型別，顯式轉換為uint128型別，雖然可以正確編譯，但len8為負值，顯示轉換後為0
   }
}