class Categorymodle{
  List<dynamic> prod;
  Categorymodle({required this.prod});
  
  factory Categorymodle.fromjson(Map<String,dynamic>json){
    return Categorymodle(prod: json['products']);
  }
}