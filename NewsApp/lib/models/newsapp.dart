class newsappmodel{

   List<dynamic>articles;
   newsappmodel({required this.articles});

   factory newsappmodel.fromjson(Map<String,dynamic>json)
   {
     List<dynamic> fulldata=json['articles'].map(
      (user){
          return{
              'Author':user['author'],
              "title":user['title'],
              "description":user['description'],
              "urlToImage":user['urlToImage']
          };
      }
     ).toList();
     return newsappmodel(articles: fulldata);
   }

}