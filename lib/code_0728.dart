void main() {
  DateTime target1 = DateTime(2025, 07, 28, 09, 30);
  print(formatDate(target1));
  DateTime target2 = DateTime(2025, 07, 28, 08, 30);
  print(formatDate(target2));
  DateTime target3 = DateTime(2025, 07, 28, 01, 30);
  print(formatDate(target3));
  DateTime target4 = DateTime(2025, 07, 27, 01, 30);
  print(formatDate(target4));
  DateTime target5 = DateTime(2025, 07, 01, 01, 30);
  print(formatDate(target5));
}

/// 날짜를 문자열로 변환
/// (1시간 이내라면 OO분전,
/// 24시간 이내라면 OO 시간전,
/// 7일 이내라면 OO일전,
/// 아니라면 OOOO년 OO월 OO일)
String formatDate(DateTime target) {
  DateTime now = DateTime.now();
  final gapSecond =
      (now.millisecondsSinceEpoch - target.millisecondsSinceEpoch) ~/ 1000;
  // int hour = 60 * 60;
  if (gapSecond <= 3600) {
    // OO분전
    return "${gapSecond ~/ 60}분전";
  } else if (gapSecond <= 86400) {
    // 24시간 => 3600초(60초 * 60분) * 24
    // OO시간전
    return "${(gapSecond ~/ 60) ~/ 60} 시간전";
    // return
  } else if (gapSecond <= 604800) {
    return "${(gapSecond ~/ 60) ~/ 60 ~/ 24} 일전";
  }
  return "${target.year}년 ${target.month}월 ${target.day}일";
}