pragma solidity ^0.4.22;

contract DataLocation{

	uint[] storageData;	//storageData儲存在storage

	function test1(uint[] memoryArray) public pure{ //memoryArray儲存在memory
	}

	function test2(uint[] memoryArray) public {

		storageData = memoryArray;	//將memory變數內容複製一份給storage變數

		var varData = storageData;	//付予變數的參照值，varData會儲存在storage

		varData.length = 2;	//varData與storageData是參照關係，改變varData的長度，也就是改變storageData的長度

		delete storageData;	//清空storageData的內容，也就是清空varData的內容

		//varData = memoryArray;	//不能執行，會造成在storage中建立一個暫停但未命名的陣列，但storage是靜態配置，所以會發生衝突

		//delete varData;	//不能執行

		test3(storageData);	//以傳值方式呼叫test3函數

		test4(storageData);	//在memory中建立一個暫時性的複製，呼叫test4函數
	}

	function test3(uint[] storage storageArray) internal pure{}
	function test4(uint[] memoryArray) public pure{}
}