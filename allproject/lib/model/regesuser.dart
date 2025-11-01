class Regemodel{
  bool status;
  String message;
  Regemodel({required this.message,required this.status});

   factory Regemodel.fromjson(Map<String,dynamic>json){
     return Regemodel(message: json['message'], status: json['status']);
   }

}