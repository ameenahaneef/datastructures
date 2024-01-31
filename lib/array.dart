int? findLargest(List<int>list){
  if(list.isEmpty){
    print('list is empty');
    return null;
  }
  int largest=list[0];
  for(int i=0;i<list.length;i++){
     if(list[i]>largest){
      largest=list[i];
     }
  }
  return largest;
}

int? smallest(List<int>list){
  if(list.isEmpty){
    print('list is empty');
    return null;
  }
  int smallest=list[0];
  for(int i=0;i<list.length;i++){
    if(list[i]<smallest){
      smallest=list[i];
    }
  }
  return smallest;

  
}
int? secondLargest(List<int>list){
  if(list.length<2){
    print('no enough value ');
    return null;
  }
  int largest=list[0];
 int secondLargest=list[1];
 for(int i=1;i<list.length;i++){
  if(list[i]>largest){
    
    secondLargest=largest;
    largest=list[i];
  }
  else if(list[i]>secondLargest&&list[i]!=largest){
    secondLargest=list[i];
  }
 }
 return secondLargest;
}
int? secondSmallest(List<int>list){
  if(list.length<2){
    print('no enough count');
    return null;
  }
  
  int smallest=list[0];
  int secondSmallest=list[1];
  if(list[1]<smallest){
    secondSmallest=smallest;
    smallest=list[1];
  }else{
    secondSmallest=list[1];
  }
  for(int i=0;i<list.length;i++){
    if(list[i]<smallest){
      secondSmallest=smallest;
      smallest=list[i];
    }
    else if(list[i]<secondSmallest&&list[i]!=smallest){
      secondSmallest=list[i];
    }
  }
  return secondSmallest;
}
void findDuplicates(List<int>list){
  Set<int>seen={};
  Set<int>dupli={};
  for(int num in list){
    if(!seen.add(num)){
      dupli.add(num);
    }
  }
  list.clear();
  list.addAll(seen);
  print(list);
}
void removeDuplicates(List<int>list){
  List<int>unique=[];
  List<int>dupli=[];
  for(int nums in list){
    if(unique.contains(nums)){
      dupli.add(nums);
    }else{
      unique.add(nums);
    }
  }
  print(unique);
}
int countLetteers(String str){
 int count=0;
  if(str.isEmpty){
    print('list is empty');
    //return 0;
  }
  str=str.replaceAll(' ', '');
  for(int i=0;i<str.length;i++){
count++;
  }
  return count;
}
bool isAnagrams(String str1,String str2){
  str1=str1.replaceAll(' ','');
  str2=str2.replaceAll(' ','');
  if(str1.length!=str2.length){
    return false;
  }
  List<String>char1=str1.split('');
  List<String>char2=str2.split('');

  char1.sort();
  char2.sort();
  return char1.join()==char2.join();
  }
  void vowel(String str){
    for(int i=0;i<str.length;i++){
      String current=str[i].toLowerCase();
      if('aeiou'.contains(str[i])){
        print(current);
      }
    }
  }

void main(){
  List<int>num=[6,1,2,3,4,4,5,5,5,5,7];
  int? highest=findLargest(num);
  String s='keep';
  String l='silent pl';
  int c=countLetteers(l);
  print(c);
if(isAnagrams(s, l)){
  print('it is annagram');

}
else{
  print('not');
}
  // int? small=smallest(num);
  // int? second=secondLargest(num);
  // int? secondsmall=secondSmallest(num);
  // print('secondsmallest is $secondsmall');
  print(highest);
  // print('smallest is $small');
  findDuplicates(num);
  removeDuplicates(num);
  vowel(s);
  // print('secondlargest is: $second');
}
