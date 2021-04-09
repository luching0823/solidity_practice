pragma solidity 0.4.22;	//這一份智能合約適用的編譯器版本

contract HelloWorld {	//合約contract宣告，類似物件導向程式的類別class宣告
    address owner;		//位址型別的變數
    string greetStr="Hello World";	//字串型別的變數，初始值是Hello World
    
    constructor() public { 		//建構式（建構者函數），是智能合約在上鏈時最先執行的函數，就像是物件導向程式中建立一個實體物件（new），可以將初始化的工作放在智能合約的建構式中。
        owner = msg.sender;		//將智能合約上鏈的帳號msg.sender，記錄在owner變數中
    }
    
    function greet() public constant returns (string) { 	//宣告一個名為greet的函數
															//public表示任何帳號皆合呼叫執行此函數；
															//constant表示執行此函數時不會更動區塊鏈的任何狀態，也就是不會改變任何合約的變數內容，因此執行此函數的交易不須經過節點間的共識；
															//returns (string)表示回傳字串型別的結果
        if( msg.sender == owner) {							//if-else語法，判斷呼叫執行此函數的帳號是否為owner，也就是將合約上鏈的帳號
            return strContact( greetStr, " ", "-Boss");		//呼叫執行strContact函數
        } else { 
            return strContact( greetStr, " ", "-Guest");
        }
    }
    
	//以太坊智能合約因為先天上的限制，對於字串處理比其它程式語言複雜。
	//字串合併時，須先轉換成位元組型別bytes，再對每個位元進行複製，來達到字串合併的目的
    function strContact( string _a, string _b, string _c) private pure returns ( string) {
        bytes memory _ba = bytes(_a);
        bytes memory _bb = bytes(_b);
        bytes memory _bc = bytes(_c);
        
        string memory len = new string(_ba.length + _bb.length + _bc.length);
        bytes memory abc = bytes(len);
        
        uint k = 0;
        for(uint i = 0 ; i < _ba.length; i++) abc[k++] = _ba[i];
        for(i = 0 ; i < _bb.length; i++) abc[k++] = _bb[i];
        for(i = 0 ; i < _bc.length; i++) abc[k++] = _bc[i];
        return string(abc);
    }
}