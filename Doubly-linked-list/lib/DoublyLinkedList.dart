
import 'Node.dart';

class DoublyLinkedList {
  Node head;
  Node tail;

  DoublyLinkedList(dynamic headData) {
    Node newNode = Node(data: headData);
    this.head = newNode;
    this.tail = newNode;
    
  }

  void insertAtFirst(dynamic data) {
    Node newNode = Node(data: data);
    newNode.nextNode = this.head;
    newNode.prevNode = null;
    this.head.prevNode = newNode;
    this.head = newNode;
  }

  void insertAtLast(dynamic data) {
    Node newNode = Node(data: data);

    newNode.nextNode = null;
    if (this.head.nextNode == null) {
      this.head.nextNode = newNode;
      newNode.prevNode = this.head;
      newNode.nextNode = null;
      this.tail = newNode;
    } else {
      this.tail.nextNode = newNode;
      newNode.prevNode = this.tail;
      this.tail = newNode;
    }
  }

  void insertAtPosition(dynamic data, int position) {
    
    if (position == 1) {
      insertAtFirst(data);
      }else {
      Node nodeBeforeNewNode = getNodeAt(position - 1);
      Node newNode = Node(data: data);
      newNode.prevNode = nodeBeforeNewNode;
      newNode.nextNode = nodeBeforeNewNode.nextNode;
      newNode.nextNode.prevNode = newNode;
      nodeBeforeNewNode.nextNode = newNode;
    }
    
  }

  int get count {
    int counter = 0;
    Node currentNode = this.head;
    while (currentNode != null) {
      currentNode = currentNode.nextNode;
      counter++;
    }
    return counter;
  }

  Node getNodeAt(int position) {
    //Not zero-based unlike arrays
    if (position > count || position <= 0) {
      throw "Out of bounds";
    }

    Node currentNode = this.head;
    int counter = 1;

    while (counter < position) {
      currentNode = currentNode.nextNode;
      counter++;
    }
    return currentNode;
  }

  void deleteFirst() {
    if (this.head.nextNode == null) {
      this.head = null;
      this.tail = null;
    } else {
      this.head.nextNode.prevNode = null;
      this.head = this.head.nextNode;
    }
  }

  void deleteLast() {
    if (this.head.nextNode == null) {
      this.head = null;
      this.tail = null;
    }
    this.tail.prevNode.nextNode = null;
    this.tail = this.tail.prevNode;
  }

  void deleteAtPosition(int position) {
    if (position == 1) {
      deleteFirst();
    } else if (position == count) {
      deleteLast();
    } else {
      Node nodeBeforeNodeToBeDeleted = getNodeAt(position - 1);

      nodeBeforeNodeToBeDeleted.nextNode =
          nodeBeforeNodeToBeDeleted.nextNode.nextNode;
      nodeBeforeNodeToBeDeleted.nextNode.prevNode = nodeBeforeNodeToBeDeleted;
    }
  }

  void printForward() {
    Node currentNode = this.head;
    while (currentNode != null) {
      print(currentNode.data);
      currentNode = currentNode.nextNode;
    }
  }

  void printBackwards() {
    Node currentNode = this.tail;
    while (currentNode != null) {
      print(currentNode.data);
      currentNode = currentNode.prevNode;
    }
  }
}
