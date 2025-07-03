void main() {
  /// [1] 1~10000 더하기
  ///    반복문 사용하기
  ///
  /// 방법1.
  int result11 = getSum(10000);
  print(result11);

  /// 방법2. 가우스 공식
  int result22 = getSumVer2(10000);
  print(result22);

  /// [2] 리스트 뒤집기
  ///     [1, 2, 3, 4, 5] => [5, 4, 3, 2, 1]
  List<int> before = [1, 2, 3, 4, 5];

  /// 방법1. List가 가지고 있는 reversed 메서드 사용 => 간단
  final result1 = before.reversed.toList();
  print(result1);
  print(before);

  /// 방법2. 새로운 리스트 만들어서 List의 길이만큼 반복하면서 반대값 넣어주기 => 0번에 99번, 1번에 98... 99번에 0번 => 100번
  /// 장점 : 원본 리스트를 수정하지 않습니다.
  /// 단점 : 리스트의 길이만큼 반복해야됨
  print(reverse1(before));
  print(before);

  /// 방법3. 기존 리스트에서 리스트의 길이의 반만 반복하면서 끝값과 첫값 바꿔주기
  /// 장점 : 반만 반복해도 되어서 성능적으로 빨라보임
  /// 단점 : 원본 리스트의 변경이 일어남
  // List<int> before = [1, 2, 3, 4, 5];
  // List<int> before = [1, 2, 3, 4, 5, 6];
  // 리스트의 길이를 2로나눈 몫만큼만 순회
  reverse2(before);
  print(before);
}

/// 1부터 num까지의 합을 반환합니다
int getSum(int num) {
  int sum = 0;
  for (var i = 1; i <= 10000; i++) {
    sum += i;
  }
  return sum;
}

/// 1부터 num까지의 합을 반환합니다
///
/// 가우스공식을 이용한 계산
int getSumVer2(int num) {
  int num = 10000;
  int sum = (num * (num + 1)) ~/ 2;
  return sum;
}

List<int> reverse1(List<int> list) {
  List<int> result2 = [];
  for (var i = 0; i < list.length; i++) {
    result2.add(list[list.length - 1 - i]);
  }
  return result2;
}

void reverse2(List<int> list) {
  // int half = (before.length / 2).floor(); // 소수점 버리기
  int half = list.length ~/ 2;
  // [1, 2, 3, 4, 5];
  for (var i = 0; i < half; i++) {
    int temp = list[list.length - 1 - i];
    list[list.length - 1 - i] = list[i];
    list[i] = temp;
  }
}
