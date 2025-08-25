void main() {
  print("==========twoSum : 9==========");
  print(twoSum([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 9));
  print("----------twoSum2 : 9----------");
  print(twoSum2([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 9));
  print("==========twoSum : 11==========");
  print(twoSum([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 11));
  print("----------twoSum2 : 11----------");
  print(twoSum2([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 11));
  print("==========twoSum : 1==========");
  print(twoSum([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 1));
  print("----------twoSum2 : 1----------");
  print(twoSum2([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 1));
  print("==========twoSum : 100==========");
  print(twoSum([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 100));
  print("----------twoSum2 : 100----------");
  print(twoSum2([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 100));
}

// 두 수의 합!
// 정렬된 배열 내에서
// 합이 정확히 target이 되는 두 원소 찾기

// target : 9
// [1,2,3,4,5,6,7,8,9,10]
// => [1,8]

// 함수명 twoSum
// 인자 : List<int> sortedNums, int target
// 반환타입 List<int>
// ~9:40 풀이
// 한 쌍만 반환!
// 가장 빨르게 구할 수 있는 쌍 반환!

List<int> twoSum(List<int> sortedNums, int target) {
  int left = 0;
  int right = sortedNums.length - 1;
  print("target : $target");
  int count = 0;
  while (left < right) {
    count++;
    print("$count left : $left right : $right");

    int sum = sortedNums[left] + sortedNums[right];
    if (sum == target) {
      return [sortedNums[left], sortedNums[right]];
    }
    if (sum < target) {
      left++;
    } else {
      right--;
    }
  }

  return [];
}

List<int> twoSum2(List<int> sortedNums, int target) {
  print("target : $target");
  int count = 0;

  for (var left = 0; left < sortedNums.length; left++) {
    for (var right = left + 1; right < sortedNums.length; right++) {
      count++;
      print("$count left : $left right : $right");
      if (sortedNums[left] + sortedNums[right] == target) {
        return [sortedNums[left], sortedNums[right]];
      }
    }
  }
  return [];
}
