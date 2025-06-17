// * 문제
// 두 개의 문자열 s와 t가 주어집니다.
// 문자열 t는 문자열 s에 임의로 추가된 하나의 문자를 포함하고 있습니다.
// 이 추가된 문자를 찾아서 반환하세요.

// * 조건
// 1. s와 t는 모두 소문자 알파벳으로만 이루어져 있습니다.
// 2. t는 s보다 한 글자가 더 긴 문자열입니다.

// * 예시
// 1. 입력: s = "abcd", t = "abcde" 출력: "e"
// 	설명: t에서 추가된 문자 'e'를 찾아 반환합니다.

class Solution {
  String findTheDifference(String s, String t) {
    // 여기서 코드 작성
    // s : abc, t: abcd 면 d 리턴!
    // 1. s와 t를 List로 변환해서 한글자씩 비교 한 뒤 일치하지 않는값 반환!
    // a,b,c / a,b,c,d
    // 각각의 문자열이 가지고 있는 숫자값을 더해서
    // t - s를 뺀 값이 추가된 글자의 문자숫자값
    // 문자숫자값을 다시 문자열로 변환해서 반환
    print(s.codeUnits);
    List<int> sCodeUnits = s.codeUnits;
    int sSum = 0;
    for (var i = 0; i < sCodeUnits.length; i++) {
      sSum = sSum + sCodeUnits[i];
    }
    List<int> tCodeUnits = t.codeUnits;
    int tSum = 0;
    for (var i = 0; i < tCodeUnits.length; i++) {
      tSum = tSum + tCodeUnits[i];
    }
    int gap = tSum - sSum;
    print(gap);
    return String.fromCharCode(gap);
  }
}

void main() {
  String result = Solution().findTheDifference("abc", "adbc");
  print('result : $result');
}
