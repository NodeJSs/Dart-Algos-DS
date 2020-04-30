import 'Node.dart';

class DoublyLinkedList{
  Node head;

  DoublyLinkedList(dynamic headData){
    this.head = Node(data:headData);
    this.head.nextNode = null;
    this.head.prevNode = null;
  }

  void insertAtFirst(dynamic data){
    Node newNode = Node(data: data);
    newNode.nextNode = this.head;
    newNode.prevNode = null;
    this.head.prevNode = newNode;
    this.head = newNode;  
  }

  void insertAtLast(){

  }

  void insertAtPosition(){

  }

  int get count => 0;

  void deleteFirst(){

  }

  void deleteLast(){

  }

  void deleteAtPosition(){

  }



  
}