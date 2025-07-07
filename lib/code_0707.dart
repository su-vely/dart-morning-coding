void main() {
  String s = "abc";
  String t = "acb";
  print(isAnagram(s, t));
}
//

/// 서로 같은 알파벳으로만 구성되어 있는지!
bool isAnagram(String s, String t) {
  // 1. 글자들을 각각 한글자씩 나누기 => List
  List<String> sSplited = s.split('');
  List<String> tSplited = t.split('');

  // 2. 각각 정렬 하기
  sSplited.sort();
  tSplited.sort();
  // 3. 비교
  // 첫번째. for 문 돌면서 비교하기
  // for (var i = 0; i < sSplited.length; i++) {
  //   if (sSplited[i] != tSplited[i]) {
  //     return false;
  //   }
  // }
  // return true;
  // 두번째. 글자 다시 하나의 문자열로 변환한 뒤 비교
  return sSplited.join() == tSplited.join();
}
