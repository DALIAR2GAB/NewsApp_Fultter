class Homemodel{
  List<dynamic> product;
  Homemodel({required this.product});

  factory Homemodel.fromjson(Map<String,dynamic>json){
    return Homemodel(product: json['data']['products']);

  }
}