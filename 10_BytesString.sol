pragma solidity 0.4.22;

contract BytesString {

   bytes myBytes;	//宣告狀態變數myBytes為bytes型別
   string myString1 = "";	//宣告狀態變數myString為string型別
   string myString2 = "";	//宣告狀態變數myString為string型別


   constructor( bytes initBytes, string initString){
       myBytes = initBytes;	//設定myBytes的值
       myBytes.length++;	//修改myBytes的長度
       
       myString1 = initString;	//設定myString的值
	   myString2 =  myString1;	//myString2指向myString同一個參考位址
	    
       string myString3 =  myString1;	//myString2指向myString同一個參考位址
	   
       string memory myString4 = "ABC";	//宣告區域變數myString3為string型別，儲存在memory中，並以字串常量指定初值
       myString4 = "CDEFG";	//修改myString3的內容及長度
      
       string myString5 = "ABC";	//宣告區域變數myString4為string型別，儲存在storage中，不能將陣列常量指定給複雜型別 
       
       string myString6 = initString;	//宣告區域變數myString5為string型別，儲存在storage中，不能將儲存在memory的位址指定給存在storage的變數
   }
}