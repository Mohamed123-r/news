class ArticlesModel {

  final String title;
  final String? subTitle;
  final String? image;
  final String url;

  ArticlesModel( {
    required this.url,
    required this.title,
    required this.subTitle,
    required this.image,
  });

 factory ArticlesModel.fromJason(json)
 {
   return ArticlesModel(
     title: json["title"],
     subTitle: json["description"],
     image: json["urlToImage"],
     url: json["url"],
   );
 }
}
