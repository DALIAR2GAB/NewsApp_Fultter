class Playermodel{
  Map<String,dynamic> data;

  Playermodel({required this.data});

  factory Playermodel.fromjsom(Map<String,dynamic>json){
    return Playermodel(data: json['data']['timings']);
  }
}