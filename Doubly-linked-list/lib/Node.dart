class Node{
  dynamic data;
  Node prevNode;
  Node nextNode;

  Node({dynamic data, Node prevNode = null, Node nextNode = null}){
    this.data = data;
    this.prevNode = prevNode;
    this.nextNode = nextNode;
  }
}