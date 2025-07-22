void main() {
  print('my_project : ${snakeToCamel("my_project")}');
  print('this_is_dart : ${snakeToCamel("this_is_dart")}');
}

// 스네이크케이스를 입력받아서 카멜케이스로 변환
// 반환타입 : String
// 함수명 : snakeToCamel
// 함수인자 : String snakeStr
// 예시1 : my_project => myProject
// 예시1 : this_is_dart => thisIsDart
String snakeToCamel(String camelStr) {
  List<int> codeUnits = camelStr.codeUnits;
  List<int> newCodeUnits = [codeUnits[0]];
  for (var i = 1; i < codeUnits.length; i++) {
    int prevChar = codeUnits[i - 1];
    int currChar = codeUnits[i];
    if (currChar == 95) {
      continue;
    }
    if (prevChar == 95 && 97 <= currChar && currChar <= 122) {
      newCodeUnits.add(currChar - 32);
    } else {
      newCodeUnits.add(currChar);
    }
  }

  return String.fromCharCodes(newCodeUnits);
}