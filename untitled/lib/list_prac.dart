void main(){

  List l = [10,20,30];
  print(l);
  l.add(20);
  l.add("20");
  l.add("Ayush");

  List list = ['a','b','c'] ;
  list.insertAll(2, l);
  list[2] = 0 ;
  list.replaceRange(0, 5, [1,2,3,4,5,6,7,8,9]);
  list.removeRange(0, 9);
  list.removeLast();
  list.removeAt(2);
  print('Length :${list.length}');
  print('Reverse : ${list.reversed}');
  print('First :${list.first}');
  print('Last : ${list.last}');
  print('is Empty : ${list.isEmpty} ') ;
  print('is Not Empty : ${list.isNotEmpty}');
  print('Element at : ${list.elementAt(2)}');
}