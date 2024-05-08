main(){

  //Map : key value pair , all key must be unique
  var mapName = {
    'Key1':'Value1' ,
    'Key2':2 ,
    'Key3':3.2 ,
    'Key4':true
  } ;

  print(mapName['Key2']); // if you try to print the value for key which don't exists then it will print null and key is case sensitive .

  //2nd Way
  var map = {} ;
  map['key1'] = 1 ;
  map['key2'] = 2 ;
  map['key3'] = 3 ;
  map['key4'] = 4 ;
  map['key5'] = 5 ;

  print(map.isNotEmpty);
  print(map.isEmpty);
  print(map.length);
  print(map.entries);
  print(map.values);
  print(map.keys);
  print(map.containsKey('key4'));
  print(map.containsValue(5));
  print(map.remove('key5'));
  print(map);



}