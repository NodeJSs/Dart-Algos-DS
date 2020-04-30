import 'CircularLinkedList.dart';
import 'Node.dart';

void main() {
  //Solving the josephus problem:
  /*
  1600 people sit at a circular table. The 1st person has a knife and kills the 2nd, then hands it to the next person. Person 3 stabs 4 & gives the it to person 5. This is repeated until there is only a single person remaining. Who remains in the end?
   */
  CircularLinkedList list = new CircularLinkedList(1);
  for (var i = 2; i <= 1600; i++) {
    list.insertAtLast(i);
  }
  Node currentNode = list.head;
  while (list.count != 1) {
    list.delete(currentNode.nextNode);
    currentNode = currentNode.nextNode;
  }
  list.printForward();
}
