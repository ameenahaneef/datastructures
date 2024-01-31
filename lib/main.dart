class Node{
  int? data;
  Node? next;
  Node(this.data);
}
class LinkedList{
  Node? head;
  Node? tail;
  void addNode(int data){
    Node newNode=Node(data);
    if(head==null){
      head=newNode;
    }else{
      tail?.next=newNode;
    }
    tail=newNode;

  }
  void delete(int data){
    Node? temp=head,prev;
    if(temp!=null&&temp.data==data){
      head=temp.next;
      return;
    }
    while(temp!=null&&temp.data!=data){
    prev=temp;
    temp=temp.next;
    }
    if(temp==null){
      return;
    }
    if(temp==tail){
      tail=prev;
      tail?.next=null;
      return;
    }
    prev?.next=temp.next;
  }
  void removeDuplicates(){
    Node? current=head;
    while(current!=null){
      Node? next=current.next;
    
    while(next!=null&&current.data==next.data){
      next=next.next;

    }
    current.next=next;
    if(next==tail&&current.data==next?.data)
    {
tail=current;
    }
    current=next;
    }
  }
  void display(){
    if(head==null){
      print('empty');
      return;
    }
    Node? temp=head;
    while(temp!=null){
      print(temp.data);
      temp=temp.next;
    }
    
  }
  void insertAfter(int nextTo,int data){
    Node newNode=Node(data);
    Node? temp=head;
    while(temp!=null&&temp.data!=nextTo){
      temp=temp.next;
    }
    if(temp==null){
return;
    }
    if(temp==tail){
      tail?.next=newNode;
      tail=newNode;
      return;
    }
    newNode.next=temp.next;
    temp.next=newNode;
  }
 
}
void main(){
  List<int>array=[1,2,3,4,5];
  LinkedList list=LinkedList();
  for(int element in array){
    list.addNode(element);
  }
  list.display();
  // list.addNode(10);
  // list.addNode(20);
  // list.addNode(20);
  // list.addNode(20);
  // list.addNode(30);
  
  // list.removeDuplicates();
   //list.delete(30);
//  list.insertAfter(30, 40);
//   list.display();
}
