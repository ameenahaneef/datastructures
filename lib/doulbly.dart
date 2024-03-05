import 'package:linkedlist/doulelinkedlist.dart';

class Node{
  Node? prev;
  int? data;
  Node? next;
  Node(this.data);
}
class DouleLinkedList{
  Node? head;
  Node? tail;

  void addNode(int data){
    Node newNode=Node(data);
    Node? temp=head;
    if(temp==null){
      head=newNode;
}else{
  tail?.next=newNode;
  newNode.prev=tail;
}
tail=newNode;
  }
  void delete(int data){
    Node? temp=head,prev;
    if(temp!=null&&temp.data==data){
      head=temp.next;
      head!.prev=null;
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
      tail!.next=null;
      return;
    }
    
   prev!.next=temp.next;
   temp.next=prev.next;
  }
  void insertBefore(int before,int data){
    Node newNode=Node(data);
    Node? temp=head;
    if(temp!=null&&temp.data==before){
      newNode.next=head;
      head=newNode;
      return;
    }
    while(temp!=null&&temp.data!=before){
      temp=temp.next;
    }
    if(temp==null){
      return;
    }
    
   temp.prev!.next=newNode;
   newNode.prev=temp.prev;
   newNode.next=temp;
   temp.prev=newNode;

  }
  void insertAfter(int after,int data){
    Node newnode=Node(data);
    Node? temp=head;
    while(temp!=null&&temp.data!=after){
      temp=temp.next;
    }
    if(temp==null){
      return;
    }
    if(temp==tail){
      tail!.next=newnode;
      newnode.prev=tail;
      tail=newnode;
      return;
    }
    newnode.next=temp.next;
    temp.next!.prev=newnode;
    temp.next=newnode;
    newnode.prev=temp;
  }
  // void reverse(){
  //   Node? prev=null;
  //   Node? current=head;
  //   Node? next;
  //   while(current!=null){
  //     next=current.next;
  //     current.next=prev;
  //     prev=current;
  //     current=next;
  //   }
  // }
  void reverse(){
    Node? prev=null;
    Node? current=head;
    Node? next;
    while(current!=null){
      next=current.next;
      current.next=prev;
      prev=current;
      current=next;
    }
    if(current==null){
      return;
    }
  }
  void removeDuplicates(){
    Node?current=head;
    while(current!=null){
      Node? next=current.next;
    
    while(next!=null&& next.data==current.data){
      next=next.next;
    }
    current.next=next;
    if(next==tail&&current.data==next!.data){
tail=current;
    }
  
  current=next;
  }
  }
  void display(){
    Node? temp=head;
    while(temp!=null){
      print(temp.data);
      temp=temp.next;
    }
  }
}
void main(){
  DouleLinkedList list=DouleLinkedList();
  
    list.addNode(10);
       list.addNode(10);
          list.addNode(10);
             list.addNode(20);

                list.addNode(30);
   
  
   list.removeDuplicates();
  // list.addNode(10);
  // list.addNode(40);
  // list.addNode(50);
  // list.reverse();
  //list.delete(40);
  // list.insertBefore(50, 0);
  // list.insertAfter(10, 0);
list.display();
}
