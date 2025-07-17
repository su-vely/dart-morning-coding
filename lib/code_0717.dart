void main() {
  print("test@test.com => true ${isEmail('test@test.com')}");
  print("test@.com => false ${isEmail('test@.com')}");
  print("test@test. => false ${isEmail('test@test.')}");
  print("test@test => false ${isEmail('test@test')}");
  print("@test.com => false ${isEmail('@test.com')}");
  print("test@test.com. = false ${isEmail('test@test.com.')}");
}

// 문자열 str 인자로 전달받아서
// 이메일인지 여부 반환하는 함수
// 반환타입 bool
// 함수이름 isEmail
// 인자 String str
// 전달받은 str이 이메일형식이라면 true
// 아니라면 false
// test@test.com => true
// test@.com => false
// test@test. => false
// test@test => false
// @test.com => false
// test@...com => false
// test@test.com. = false
// 정규표현식, @단위로 split -> .단위로 split
// 글자단위로 split해서 @, . 의 위치를 기반으로 이메일 형식인지 판별
bool isEmail(String str) {
  // final emailRegExp = RegExp(
  //     r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$");
  // return emailRegExp.hasMatch(str);
  int atPos = -1;
  int dotPos = -1;
  List<String> chars = str.split('');
  for (var i = 0; i < chars.length; i++) {
    String char = chars[i];
    if (char == '@') {
      atPos = i;
    } else if (char == '.') {
      dotPos = i;
    }
  }

  if (atPos < 1) {
    return false;
  }
  if (dotPos < atPos || dotPos == chars.length - 1 || dotPos - 1 == atPos) {
    return false;
  }

  return true;
}