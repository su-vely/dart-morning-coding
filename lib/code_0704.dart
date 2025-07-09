void main() {
  //
  String a = "abcdefg";
  // String a = "abcda";
  String b = "def";

  final result = findIndex(a, b);
  print(result);
  final result2 = a.indexOf(b);
  print(result2);
}
//

/// 문자열 a에서 b가 등장하는 위치의 인덱스 찾기
/// 만약에 a내에서 b가 존재하지 않으면 -1 반환
int findIndex(String a, String b) {
  // String a = "abcdefg";
  // String b = "def";
  List<String> aSplited = a.split('');
  List<String> bSplited = b.split('');
  for (var i = 0; i < aSplited.length - bSplited.length + 1; i++) {
    bool isMatched = true;
    for (var j = 0; j < bSplited.length; j++) {
      if (aSplited[i + j] != bSplited[j]) {
        isMatched = false;
      }
    }
    if (isMatched) {
      return i;
    }
  }
  return -1;
}
