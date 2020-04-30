import 'Node.dart';

class CircularLinkedList {
  Node head;
  CircularLinkedList(dynamic data) {
    this.head = Node(data: data);
    this.head.nextNode = this.head;
    this.head.prevNode = this.head;
  }

  int get count {
    Node currentNode = this.head;
    int counter = 1;
    while (currentNode.nextNode != this.head) {
      currentNode = currentNode.nextNode;
      counter++;
    }
    return counter;
  }

  void insertAtFirst(dynamic data) {
    Node newNode = new Node(data: data);
    newNode.nextNode = this.head;
    this.head.prevNode = newNode;
    if (this.head.nextNode == this.head) {
      this.head.nextNode = newNode;
      newNode.prevNode = this.head;
    }
    this.head = newNode;
  }

  void insertAtLast(dynamic data) {
    Node newNode = new Node(data: data);
    if (this.head.nextNode == this.head) {
      this.head.nextNode = newNode;
      newNode.prevNode = this.head;
      newNode.nextNode = this.head;
      this.head.prevNode = newNode;
    } else {
      newNode.prevNode = this.head.prevNode;
      newNode.prevNode.nextNode = newNode;
      this.head.prevNode = newNode;

      newNode.nextNode = this.head;
    }
  }

  void delete(Node node){
    node.prevNode.nextNode = node.nextNode;
    node.nextNode.prevNode = node.prevNode;
    if(node == this.head){
      this.head = this.head.nextNode; 
    }
  }

  void printForward() {
    Node currentNode = this.head;
    while (currentNode != null) {
      print(currentNode.data);
      if(currentNode.nextNode == this.head){
        break;
      }
      currentNode = currentNode.nextNode;
    }
  }

  void printBackwards() {
    Node currentNode = this.head.prevNode;
    while (currentNode != null) {
      print(currentNode.data);
      if (currentNode == this.head) {
        break;
      }

      currentNode = currentNode.prevNode;
    }
  }
}
