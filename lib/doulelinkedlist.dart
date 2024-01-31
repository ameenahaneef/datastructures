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

  void displayReversed(){
    Node? temp=tail;
    while(temp!=null){
      print(temp.data);
      temp=temp.prev;
    }
  }
  
}
void main(){
  DoubleLinkedList list=DoubleLinkedList();
  list.addNode(10);
  list.addNode(20);
   list.addNode(30);
    list.addNode(40);
     list.addNode(50);
      list.addNode(60);
  list.display();
  list.displayReversed();
}