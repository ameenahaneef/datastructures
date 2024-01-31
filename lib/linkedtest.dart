class Node{
  int? data;
  Node? next;
  Node(this.data);
}
class singleLinkedList{
  Node? head;
  Node? tail;

  void addNode(int data){
    Node?  newNode=Node(data);
    Node? temp=head;
    if(temp==null){
      head=newNode;
    }else{
      tail?.next=newNode;
    }
    tail=newNode;
  }
  void prepend(int data){
    Node newNode=Node(data);
    Node? temp=head;
    if(temp==null){
      head=newNode;
    }else{
      newNode.next=head;
    }
    head=newNode;
  }
  void display(){
    Node?temp=head;
    while(temp!=null){
      print(temp.data);
      temp=temp.next;
    }
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
  }
  prev?.next=temp.next;
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
    newNode.next=null;
  }

  newNode.next=temp.next;
  temp.next=newNode;
}

void insertBefore(int beforeTo,int data){
  Node newNode=Node(data);
  Node? temp=head,prev;
  if(temp!=null&&temp.data==beforeTo){
    
    newNode.next=head;
    head=newNode;
    return;
  }
  while(temp!=null&&temp.data!=beforeTo){
    prev=temp;
    temp=temp.next;
  }
  if(temp==null){
    return;
  
  }
  newNode.next=temp;
  prev?.next=newNode;
  
  

  }
  void reversed(){
    Node? prev=null;
Node? current=head;
Node? next;
while(current!=null){
  next=current.next;
  current.next=prev;
  prev=current;
  current=next;
}
head=prev;
  }
  bool isPalindrome(){
    List<dynamic>list=[];
    Node? current=head;
    while(current!=null){
      list.add(current.data);
      current=current.next;
    }
    for(int i=0;i<list.length~/2;i++){
      if(list[i]==list[list.length-1-i]){
        return true;
      }
      
    }
    return false;
  }

  void deleteBefore(int beforeTo){
    Node? temp=head,prev;
    if(temp!=null&&temp.data==beforeTo){
     temp=temp.next;
      return;

    }
    while(temp!=null&&temp.data!=beforeTo){
      prev=temp;
      temp=temp.next;
    }
    if(temp==null){
      return;
    }
    if(prev==head){
      head=temp;
    }else{
      prev?.next=temp.next;
    }

    
  }
  void deleteAfter(int afterTo){
    Node? temp=head;
    while(temp!=null&&temp.data!=afterTo){
     temp=temp.next;
     }
    if(temp==null&&temp?.next==null){
      return;
    }
    temp?.next=temp.next?.next;
  }
  
}
void main(){
  singleLinkedList list=singleLinkedList();
  list.addNode(10);
  list.addNode(20);
  list.addNode(30);
  list.addNode(40);
  //list.deleteBefore(20);
 //  list.prepend(20);
 //  list.insertAfter(10,0);
 //list.insertBefore(30, 1);
  //list.reversed();
  list.deleteAfter(30);
  list.display();
}