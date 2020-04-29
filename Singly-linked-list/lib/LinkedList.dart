import 'Node.dart';

class LinkedList{
  
  Node head;
  
  LinkedList(dynamic headData){
    
    this.head = new Node(data: headData);
  }
  
  void insertAtFirstPosition(dynamic data){
    Node _newHead = new Node(data: data);
    _newHead.next = this.head;
    this.head = _newHead;
    
  }

  void insertAtEnd(dynamic data){
    Node _newTail = new Node(data: data);
    if(this.head == null){
      this.head =  _newTail;
    }
    else{
      Node _currentTail = this.head;
      while(_currentTail.next != null){
        _currentTail = _currentTail.next;
      }
      _currentTail.next = _newTail;
    }
  }

  void insertAtMiddle(dynamic data, int index){
    Node _previousNodeAtThisPosition = getNodeAt(index-1);
    Node newNode = Node(data: data);
    if(index == 0 || this.head == null){
      this.head = newNode;
    }
    else{
      newNode.next = _previousNodeAtThisPosition.next;
      _previousNodeAtThisPosition.next = newNode;  
    }
    
  }

  void deleteList(){
    this.head = null;
  }

  Node deleteFirst(){
    if(this.head == null){
      throw 'Linked list is empty';
    }
    Node previousHead = this.head;
    this.head = this.head.next;
    return previousHead;
  }


  Node deleteLast(){
    if(this.head == null){
      return this.head;
    }
    else if(this.head.next == null){
      this.head = null;
      return null;
    }
    Node _currentNode = this.head;
    while(_currentNode != null){
      if(_currentNode.next.next == null){
        Node previousTail = _currentNode.next;
        _currentNode.next = null;
        return previousTail;
      }
      _currentNode = _currentNode.next;
    }
  }

  Node deleteAt(int index){
    Node nodeBeforeNodeToBeDeleted = getNodeAt(index -1);
    if(index == 0){
      deleteFirst();
    }
    else if(nodeBeforeNodeToBeDeleted.next.next == null){
      nodeBeforeNodeToBeDeleted.next= null;
    }
    
    nodeBeforeNodeToBeDeleted.next = nodeBeforeNodeToBeDeleted.next.next;
  }

  Node getNodeAt(int index){
    int _counter = 0;
    Node _currentNode = this.head;
    while(_currentNode != null){
      if(_counter == index){
        return _currentNode;
      }
      _counter++;
      _currentNode = _currentNode.next;  
    }
    return null;
  }

}


