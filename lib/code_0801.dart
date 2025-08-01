void main() {
  print(factorial1(10));
  print(factorial2(10));
}

/// 팩토리얼 계산 함수
/// n 입력받았을 때  n * (n-1) * (n-2) * ... * 1
/// 10 => 10 * 9 * 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1
/// 반환타입 int
/// 함수이름 factorial
/// 함수인자 int n
/// 방법 두가지
/// 1. 반복문 -> 함수이름 factorial1
int factorial1(int n) {
  if (n <= 0) {
    return 0;
  }
  if (n == 1) {
    return 1;
  }
  int result = 1;
  for (var i = 2; i <= n; i++) {
    result = result * i;
  }
  return result;
}

/// 2. 재귀함수 -> 함수이름 factorial2
/// => 함수 내에서 자기자신을 호출
// void re(int n) {
//   // 특정한 조건이 도달하면 호출 X
//   if (n > 0) {
//     re(n);
//   }
// }
int factorial2(int n) {
  if (n <= 0) {
    return 0;
  }
  
  if (n == 1) {
    return 1;
  }

  return n * factorial2(n - 1);
}