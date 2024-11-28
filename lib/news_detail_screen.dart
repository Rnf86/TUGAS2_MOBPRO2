import 'package:flutter/material.dart';
import 'package:tugaspm2_rizqiana/const/resource.dart';
import 'package:tugaspm2_rizqiana/login_screen.dart';
import 'package:tugaspm2_rizqiana/styles.dart';

import 'news.dart';

class NewsDetailScreen extends StatefulWidget {
  const NewsDetailScreen(
      {Key? key,
      required this.id,
      required this.title,
      required this.description,
      required this.content,
      required this.image})
      : super(key: key);

  // Make the email final and type-safe
  final String id;
  final String title;
  final String description;
  final String content;
  final String image;

  @override
  State<NewsDetailScreen> createState() => _NewsDetailScreenState();
}

class _NewsDetailScreenState extends State<NewsDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title,
            style: TextStyles.title,
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Card(
            margin: EdgeInsets.all(10),
            elevation: 5,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Image.network(
                    widget.image,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 200,
                  ),
                  SizedBox(height: 10), // Jarak antara gambar dan deskripsi,
                  Text(widget.description)
                ],
              ),
            )));
  }
}
