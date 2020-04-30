import 'DoublyLinkedList.dart';

void main(){
  DoublyLinkedList newList = new DoublyLinkedList(1);
  newList.insertAtLast(2);
  newList.insertAtLast(345);
  newList.insertAtLast(4);
  newList.insertAtLast("jne");
  //print(newList.count);
 //print(newList.getNodeAt(5).data);
  
  
  newList.insertAtPosition("middle child", 5);
  
  //print(newList.getNodeAt(1).nextNode.prevNode.data);
  print("count: " +newList.count.toString());
  print("forwards:");
  newList.printForward();
  print("backwards:");
  newList.printBackwards();
  
}