class Weathermodel{
   String name;
   String country;
   num temp_c;
   String text;
   String icon;
   Weathermodel({required this.text,required this.name,required this.icon,required this.country,required this.temp_c});
   
   factory Weathermodel.fromjson(Map<String,dynamic>json){
     return Weathermodel(
         text: json['current']['condition']['text'],
         name: json['location']['name'],
         icon: json['current']['condition']['icon'],
         country: json['location']['country'],
         temp_c: json['current']['temp_c']);
   }
}