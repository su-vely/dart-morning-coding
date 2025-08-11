void main() {
  // 12300 => 출력
  print("12300원 일때 : ");
  printCoin2(12300);
  print("-" * 20);
  // 2300 => 출력
  print("2300원 일때 : ");
  printCoin2(2300);
  print("-" * 20);
  // 100 => 출력
  print("100원 일때 : ");
  printCoin2(100);
  print("-" * 20);
  // 50 => 출력
  print("50원 일때 : ");
  printCoin2(50);
  print("-" * 20);
  // 15 => 10원짜리 1개.
  print("15원 일때 : ");
  printCoin2(15);
  print("-" * 20);
}

// ~~09:15

// 거스름돈 최소 동전개수 출력하기
// 입력 => 12,300 => '500원짜리 xx개, 100원짜리 xx개, 50원짜리 xx개, 10원짜리 xx개'
// 반환 타입 : X
// 함수이름 : printCoin
// 함수인자 : 정수 타입의 money 라는 변수
void printCoin1(int money) {
  // money 를 500으로 나눈 몫 => 500개수 담아두기
  int count500 = money ~/ 500;
  // 나머지 그다음 금액으로 나눈 나머지 계산
  money = money % 500;

  int count100 = money ~/ 100;
  money = money % 100;

  int count50 = money ~/ 50;
  money = money % 50;

  int count10 = money ~/ 10;
  money = money % 10;

  print(
      "500원짜리 $count500개, 100원짜리 $count100개, 50원짜리 $count50개, 10원짜리 $count10개");
}

// 반복문 버전
void printCoin2(int money) {
  List<int> coins = [500, 100, 50, 10];
  int length = coins.length;
  // List<int> counts = [];
  List<int> counts = [0, 0, 0, 0];
  for (var i = 0; i < length; i++) {
    int coin = coins[i];
    counts[i] = money ~/ coin;
    // counts.add(money ~/ coin);
    money = money % coin;
  }
  print(
      "500원짜리 ${counts[0]}개, 100원짜리 ${counts[1]}개, 50원짜리 ${counts[2]}개, 10원짜리 ${counts[3]}개");
}
