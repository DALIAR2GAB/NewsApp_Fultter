class Randomusermodel{
  List<dynamic>results;

  Randomusermodel({required this.results});
  factory Randomusermodel.fromjson(Map<String,dynamic>json){
    return Randomusermodel(results: json['results']);
  }
}