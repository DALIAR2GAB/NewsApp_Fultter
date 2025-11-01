import 'package:flutter/material.dart';

class Dateails extends StatelessWidget {
  Dateails({
    required this.urlToImage,
    required this.tit,
    required this.des,
    required this.author,
  });

  final String des;
  final String author;
  final String tit;
  final String urlToImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Details"),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // الصورة في النص
              CircleAvatar(
                backgroundImage: NetworkImage(urlToImage),
                radius: 80,
              ),
              SizedBox(height: 20),

              // العنوان
              Text(
                tit,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 15),

              // الوصف
              Text(
                des,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[800],
                ),
              ),
              SizedBox(height: 15),

              // المؤلف
              Text(
                "By: $author",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
