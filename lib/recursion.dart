import 'dart:io';

int calculateFactorial(int n){
  if(n==0||n==1){
    return 1;
  }else{
    return n*calculateFactorial(n-1);
  }
}
bool isPalindrome(String str){
  if(str.length<=1){
    return true;
  }
  if(str[0]==str[str.length-1]){
    return isPalindrome(str.substring(1,str.length-1));
  }
  else{
    return false;
  }
  
}
int fibonacci(int n){
  if(n==0||n==1){
    return n;
  }else{
    return fibonacci(n-1)+fibonacci(n-2);
  }
}

void main(){
  print('enter a number');
  int num=int.parse(stdin.readLineSync()!);
  int result=calculateFactorial(num);

  print(result);

  print('enter a string');
  String input=stdin.readLineSync()!;
  if(isPalindrome(input)){
    print('palindrome');

  }else{
    print('not palindrome');
  }
  for(int i=0;i<num;i++){
  int na=fibonacci(i);
  print(na);
  }
}