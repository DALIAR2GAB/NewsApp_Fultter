class Todomodel{
  List<dynamic> todos;
  int total;
  Todomodel({required this.todos,required this.total});

  factory Todomodel.fromjson(Map<String,dynamic>json){
    return Todomodel(todos: json['todos'],total: json['total']);
  }
}