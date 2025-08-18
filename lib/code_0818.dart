void main() {
// 5
  print(5.toBinaryList());
// 8
  print(8.toBinaryList());
// 16
  print(16.toBinaryList());
// 17
  print(17.toBinaryList());
// 123
  print(123.toBinaryList());
// 1024
  print(1024.toBinaryList());
// 1025
  print(1025.toBinaryList());
// extension => 특정 클래스의 메서드, 속성 추가!
// 기존의 클래스를 수정하지 않고 추가하는 문법
// extension 다트에서 많이 쓰이는 문법!
// 1024.toBinaryList(); // List<int>
}

// 09:40~
// 10진수 숫자를 2진수 숫자로변경
// 단, 2진수 숫자를 리스트로 표현
///. 8 4 2 0~1
// 5 => 101
// 입력 5 : 반환 [1,0,1]
// 입력 8 : 반환 [1,0,0,0]
// 함수 반환 타입 : List<int>
// 함수 이름 : toBinaryList
// 함수 인자 : int decimalNumber
// function
List<int> toBinaryList(int decimalNumber) {
  // 입력 : 5
  // 이진법 : 101
  // & (AND 연산자)
  // 101
  // 001
  // >> (Shift 연산자)
  // 101
  //  10
  List<int> binaryList = [];
  while (decimalNumber > 0) {
    int bit = decimalNumber & 1;
    binaryList.insert(0, bit);
    decimalNumber = decimalNumber >> 1;
  }
  return binaryList;
}

extension IntExt on int {
  List<int> toBinaryList() {
    int decimalNumber = this;
    List<int> binaryList = [];
    while (decimalNumber > 0) {
      int bit = decimalNumber & 1;
      binaryList.insert(0, bit);
      decimalNumber = decimalNumber >> 1;
    }
    return binaryList;
  }
}

// extension
