void main() {
  final arr = [124, 51332, 3523, 2, 53, 1, 356, 616, 36363];
  // final arr = [7, 9, 2, 3, 1];
  selectionSort(arr);
  print(arr);
}

// => 문서화 주석(Documentation Comment)
/// 선택정렬 : 배열에서 최소값 찾아서 제일 앞으로 보내면서 정렬하는 방식
/// [7, 9, 2, 3, 1]
///
/// 첫번째 라운드
/// 0~4번지까지 순회하면서 최소값 찾기 => 1
/// 0번지의 값이 최소값과 다르다면 교환
/// [1, 9, 2, 3, 7]
///
/// 두번째 라운드
/// 1~4번지까지 순회하면서 최소값 찾기 => 2
/// 1번지의 값이 최소값과 다르다면 교환
/// [1, 2, 9, 3, 7]
///
/// 세번째 라운드
/// 2~4번지까지 순회하면서 최소값 찾기 => 3
/// 2번지의 값이 최소값과 다르다면 교환
/// [1, 2, 3, 9, 7]
///
/// 네번째 라운드
/// 3~4번지까지 순회하면서 최소값 찾기 => 7
/// 3번지의 값이 최소값과 다르다면 교환
/// [1, 2, 3, 7, 9]
void selectionSort(List<int> arr) {
  final n = arr.length - 1;
  for (var i = 0; i < n; i++) {
    int minIndex = i;
    for (var j = i; j < arr.length; j++) {
      if (arr[minIndex] > arr[j]) {
        minIndex = j;
      }
    }
    if (minIndex != i) {
      int temp = arr[i];
      arr[i] = arr[minIndex];
      arr[minIndex] = temp;
    }
  }
}
