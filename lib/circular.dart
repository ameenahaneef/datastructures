class Node{
  Node?next;
  int? data;
  Node(this.data);
}
class Circular{
  Node? head;
  Node? tail;

void insert(int data){
  Node newNode=Node(data);
  if(head==null){
    head=newNode;
    newNode.next=head;
  }else{
    Node? temp=head;
    while(temp!.next!=head){
      temp=temp.next;
    }
  }
}
}