import 'CircularLinkedList.dart';
import 'Node.dart';

void main(){
  CircularLinkedList list = new CircularLinkedList(1);
  for(var i = 2; i <= 6; i++){
    list.insertAtLast(i);
  }
  Node currentNode = list.head;
  while(list.count != 1){
    list.delete(currentNode.nextNode);
    currentNode = currentNode.nextNode;
  }
  list.printForward(); 
}
