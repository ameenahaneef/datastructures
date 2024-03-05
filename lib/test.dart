// // int? binary(List<int>list,int target){
// // int l=0,r=list.length-1;
// // while(l<r){
// //   int? mid=l+r~/2;
// //   if(target==list[mid]){
// //     return mid;
// //   }else if(target<list[mid]){
// //     r=mid-1;
// //   }else{
// //     l=mid+1;
// //   }
// //   return mid;
// // }

// // void sum(n){
// //   if(n<0){
// //     return;
// //   }
// //   int s=n+sum(n-1);
// // }
// // class Node{

// // }
// // }
// // void main
// class Node{
//   Node? prev;
//   int? data;
//   Node? next;
//   Node(this.data);
// }
// class DoubleLinkedList{
//   Node? head;
//   Node? tail;
//   void addNode(int data){
//     Node newNode=Node(data);
//     Node? temp=head;
//     if(temp==null){
//       head=newNode;
//       newNode.prev=null;

//     }else{
//       tail!.next=newNode;
//     }
//     tail=newNode;
//   }
//   void delete(int data){
//     Node? temp=head,prev;
//     if(temp!=null&&temp.data==data){
//       head=temp.next;
//       head!.prev=null;
//     return;
//     }while(temp!=null&&temp.data!=data){
// prev=temp;
// temp=temp.next;
//     }
//     if(temp==null){
//       return;
//     }
//     if(temp==tail){
//       ta
//     }
//   }
// }