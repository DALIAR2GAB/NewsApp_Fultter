class  Newsmodel{
  List <dynamic> article;
  Newsmodel({required this.article});

  factory Newsmodel.formjson(Map<String,dynamic>json){
    return Newsmodel(article: json['articles']);
  }
}


