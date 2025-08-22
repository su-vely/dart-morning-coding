void main() {
  // 결과 : [1,2,3,6,9,8,7,4,5]
  List<List<int>> data1 = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];
  print(spiralOrder(data1));
  // (행 인덱스, 열 인덱스)
  // 왼쪽 -> 오른쪽 : 행인덱스 고정, 열인덱스 증가
  // (0, 0) (0, 1) (0, 2)
  // 위 -> 아래 : 행인덱스 증가, 열인덱스 고정
  // (1, 2) (2, 2)
  // 오른쪽 -> 왼쪽 : 행인덱스 고정, 열인덱스 감소
  // (2, 1) (2, 0)
  // 아래 -> 위쪽
  // (1, 0)

  // 결과 : [1,2,3,4,8,12,11,10,9,5,6,7]
  // List<List<int>> data2 = [
  //   [1, 2, 3, 4],
  //   [5, 6, 7, 8],
  //   [9, 10, 11, 12]
  // ];
  // print(spiralOrder(data2));

  // 결과 : [1,2,3,4,8,12,16,15,14,13,9,5,6,7,11,10]
  List<List<int>> data3 = [
    [1, 2, 3, 4],
    [5, 6, 7, 8],
    [9, 10, 11, 12],
    [13, 14, 15, 16],
  ];
  print(spiralOrder(data3));

  // (행 인덱스, 열 인덱스)
  // (0, 0) (0, 1) (0, 2) (0, 3)
  // (1, 3) (2, 3) (3, 3)
  // (3, 2) (3, 1) (3, 0)
  // (2, 0) (1, 0)
}

// 반환 타입 List<int>
// 함수 이름 spiralOrder()
// 함수 인자 List<List<int>> matrix

List<int> spiralOrder(List<List<int>> matrix) {
  //
  List<int> result = [];

  int top = 0;
  int bottom = matrix.length - 1;
  int left = 0;
  int right = matrix.first.length - 1;

  while (top <= bottom && left <= right) {
    // 왼쪽 -> 오른쪽
    for (var i = left; i <= right; i++) {
      final value = matrix[top][i];
      result.add(value);
    }
    top++;

    // 위 -> 아래
    for (var i = top; i <= bottom; i++) {
      final value = matrix[i][right];
      result.add(value);
    }
    right--;

    // 오른쪽 -> 왼쪽
    for (var i = right; i >= left; i--) {
      final value = matrix[bottom][i];
      result.add(value);
    }
    bottom--;

    // 아래 -> 위
    for (var i = bottom; i >= top; i--) {
      final value = matrix[i][left];
      result.add(value);
    }
    left++;
  }

  return result;
}
