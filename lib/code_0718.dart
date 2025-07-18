void main() {
  print("Hello world ${example('hello world')}");
  print("abcdefg ${example('abcdefg')}");
  print("aaaAAA ${example('aaaAAA')}");
}

// 문자열 str을 전달받아서
// 각 글자가 몇번 포함되어 있는지 맵에 저장 후 반환
// "hello world" => {"h" : 1, "e" : 1, "l" : 3, "o" : 2, "d" : 1, " " : 1}
// 반환타입 Map<String, int>
// 함수이름 example
// 함수인자 String str
Map<String, int> example(String str) {
  List<String> chars = str.split('');
  Map<String, int> result = {};
  for (var i = 0; i < chars.length; i++) {
    String char = chars[i];
    // result 안에 char 키에 해당하는 값이 없을경우 1로, 있을경우 +1
    int prevValue = result[char] ?? 0;
    result[char] = prevValue + 1;
  }

  return result;
}