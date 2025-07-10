void main() {
  // 1234 => 1235
  // [1,2,3,4] => [1,2,3,5]
  List<int> digits = [1, 2, 3, 4];
  print(addOne2(digits));

  // 1239 => 1240
  // [1,2,3,9] => [1,2,4,0]
  List<int> digits2 = [1, 2, 3, 9];
  print(addOne2(digits2));

  // 9999 => 10000
  // [9,9,9,9] => [1,0,0,0,0]
  List<int> digits3 = [9, 9, 9, 9];
  print(addOne2(digits3));
}

/// 1 더하기
///
/// digits => 하나의 숫자로 합치기
/// => 1더하기 => List 로 분리하기
List<int> addOne(List<int> digits) {
  // 1 더하기
  List<String> strList = [];
  // ['1', '2', '3']
  for (var i = 0; i < digits.length; i++) {
    strList.add('${digits[i]}');
  }
  String numberStr = strList.join('');
  int addedValue = int.parse(numberStr) + 1;
  // 문자열로변경
  String addedValueStr = '$addedValue';
  //=> split이용해서 분리
  List<String> addedValueList = addedValueStr.split('');

  List<int> result = [];
  //=> int List로 변경
  for (var i = 0; i < addedValueList.length; i++) {
    result.add(int.parse(addedValueList[i]));
  }

  return result;
}

/// 1 더하기
///
/// 리스트 순회하면서 직접 계산하기
List<int> addOne2(List<int> digits) {
  for (var i = digits.length - 1; i >= 0; i--) {
    digits[i] += 1;
    if (digits[i] < 10) {
      return digits;
    }
    digits[i] = 0;
  }

  // [9,9] => [0,0] => [1,0,0]
  digits.insert(0, 1);

  return digits;
}
