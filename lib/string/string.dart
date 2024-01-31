
String reversed(String str) {
  List<String> word = str.split('');
  String rev = '';
  for (int i = word.length - 1; i >= 0; i--) {
    rev += word[i] + '';
  }
  return rev;
}

bool isPalindrome(String str) {
  for (int i = 0; i < str.length - 1 - i; i++) {
    if (str[i] == str[str.length - 1 - i]) {
      return true;
    }
  }
  return false;
}
String capital(String str){
  String first=str[0].toUpperCase();
  String rest=str.substring(1);
  return '$first$rest';
}
String capitalAll(String str){
  List<String>list=str.split(' ');
  for(int i=0;i<list.length;i++){
    String first=list[i][0].toUpperCase();
    String second=list[i].substring(1);
    list[i]='$first$second';
  }
  return list.join(' ');
}
int countWords(String str){
  List<String>word=str.split(' ');
  return word.length;
}
void main() {
  String a = 'malayalam coal';
  String revers = reversed(a);
  bool pali = isPalindrome(a);
  String capitali=capital(a);
  String cap=capitalAll(a);
  // int count=countWords(a);
  // // print(count);
  // print(a);
print(revers);

  print(pali);
  print(capitali);
  print(cap);
}
