import 'LinkedList.dart';

void main(){
  LinkedList linkedList = new LinkedList("one");
  linkedList.insertAtFirstPosition("newOne");
  linkedList.insertAtEnd("tail");
  print(linkedList.deleteFirst().data);
  print(linkedList.head.data);
  

}