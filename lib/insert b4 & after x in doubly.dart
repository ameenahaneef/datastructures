class Node{
  Node? prev;
  int? data;
  Node? next;
  Node(this.data);
}
class DoubleLinkedList{
  Node? head;
  Node? tail;
void addNode(int data){
    Node node=Node(data);
    if(head==null){
      head=node;
    }else{
      tail?.next=node;
      node.prev=tail;
      
    }
    tail=node;
  }

  void display(){
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
      newNode.prev=tail;
      tail=newNode;
    return;
    }
    
 newNode.next=temp.next;
 temp.next?.prev=newNode;
 temp.next=newNode;
 newNode.prev=temp;


  }
  void insertBefore(int beforeTo,int data){
    Node newNode=Node(data);
    Node?temp=head;
    if(temp!=null&&temp.data==beforeTo){
      newNode.next=temp;
      head=newNode;
      return;
    }
    while(temp!=null&&temp.data!=beforeTo){
      temp=temp.next;
    }
    if(temp==null){
      return;
    }
    if(temp==tail){
     tail?.prev?.next=newNode;
newNode.prev=tail?.prev;
tail?.prev=newNode;
newNode.next=tail;

    }
  temp.prev?.next=newNode;
  newNode.prev=temp.prev;
  newNode.next=temp;
  temp.prev=newNode;

  }
}
void main(){
  DoubleLinkedList list=DoubleLinkedList();
  list.addNode(10);
  list.addNode(20);
  list.addNode(30);
  list.addNode(60);
  //list.display();
 // list.insertAfter(10, 50);
//   list.insertAfter(60, 1);
//  // list.display();
//   list.insertAfter(1,2);
//   //list.display();
//   list.insertAfter(2, 100);
  list.insertBefore(0, 0);
//     list.insertBefore(30, 0);

  list.display();
}