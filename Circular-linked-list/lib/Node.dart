class Node{
  dynamic data;
  Node prevNode;
  Node nextNode;

  Node({dynamic data, prevNode = null, nextNode = null}){
    this.data = data;
    this.prevNode = prevNode;
    this.nextNode = nextNode;
  }
}