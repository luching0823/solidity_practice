pragma solidity 0.4.22;

contract Literals {
    //數字常量，支持任意精度，直到被轉換成不是常量的型式
    function test1() public pure returns(uint8 v){			
       uint8 x = (2**10 + 1) - (2**10);	//雖然在運算的過程中超過uint8的範圍，但結果沒有超過，不會發生溢位
       return x;
    }
   
    function test2() public pure returns(uint8 v){			
       v = .5 * 2;	//非整數的數值，運算完為整數，還是能得到結果1
       //v = .5 * 3;	//非整數的數值，但運算完為非整數，編譯時產生錯誤
    }
    
    function test3() public pure returns(uint v){		
        uint a  = 5;
        uint x = a/2 + a/2; //運算結果會被截斷(a為變數不是常量，a/2會=2)
        //uint x = 5/2 + 5/2;	//運算結果不會被截斷
        return x;
    }
    
	//數字常量，用於表達加密貨幣
    function test4() public pure returns(bool){
        return ( 1 ether == 1000 finney);
    }
	
	//數字常量，用於表達日期時間    
    function test5() public pure returns(bool){
        return ( 1 hours == 61 minutes);
    }
    
	//字串常量
    function test6() public pure returns(string){
        return modify("Hellx World");
    }
    
    function modify(string s) public pure returns(string){
        bytes(s)[4] = "o"; //s丟進byte陣列，第四位改成o，再轉回string回傳
        return string(s);
    }
    
	//十六進制常量
    function test7() public pure returns(string){
        return hex"48454c4c4f"; //48=H,45=E,4C=L,4F=O
    }
    
	//位址常量
    function test8() public pure returns(address v){		
        return 0x5B38Da6a701c568545dCfcB03FcB875f56beddC; //位置為20byte，這裡少一位會補0
    }
    
    function test9(int a, int b) public pure returns(int x, int y) {
        x = a + b;
        y = a * b;
    }
}