void main() {
  print(binarySearch([1, 2, 3, 4, 5], 4));
  print(binarySearch([1, 2, 3, 4, 5], 10));
  print(binarySearch([1, 2, 3, 4, 5, 6, 7, 8], 7));
  print(binarySearch([1, 2, 3, 4, 5, 6, 7, 8], 2));
  print(binarySearch([1, 2, 3, 4, 5, 6, 7, 8], 1));
  print(binarySearch([1, 2, 3, 4, 5, 6, 7, 8], 10));
}

// [1, 2, 3, 4, 5, 6, 7, 8,9,10,11,12,13,14,15,16];

// 이진 탐색
// 이미 정렬되어 있는 리스트 : sortedList
// 찾을 숫자 : target
// [1,2,3,4,5]
// 함수 반환타입 : int (리스트에서 target의 index)
// 함수이름 : binarySearch
// 함수인자 : List<int> sortedList, int target
// => sortedList 에서 target이 위치한 index 반환
// => 단, target이 sortedList안에 없을 때 -1 반환
// 1. [1,2,3,4,5] => 가운데값 3 과 target 비교
// 가운데값이 target보다 작다면 중간 인덱스 ~ 끝 인덱스 중의 가운데값 가져와서 비교
// 무한반복
// for(i=0;i<sortedLit.lenxt;i++) => 순차적으로 순회
// while
// int low = 0;
// int high = sortedList.lengh - 1;
// while(low <= high)
//    가운데인덱스 => (를 구하는게 관건!)
//
// sortedList : 8개일 때 => 최악의 상황에서 몇회 반복문 돌아야되는지
// sortedList : 16개일 때, 32 => n => 수식 표현!
// 8 => 3번
// 16 => 4번
// => 
int binarySearch(List<int> sortedList, int target) {
  int low = 0;
  int high = sortedList.length - 1;
  while (low <= high) {
    int midIndex = low + (high - low) ~/ 2;
    int midValue = sortedList[midIndex];
    if (midValue == target) {
      return midIndex;
    } else if (midValue < target) {
      low = midIndex + 1;
    } else {
      high = midIndex - 1;
    }
  }
  return -1;
}