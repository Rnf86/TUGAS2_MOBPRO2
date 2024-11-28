import 'package:flutter/material.dart';
import 'package:tugaspm2_rizqiana/const/resource.dart';
import 'package:tugaspm2_rizqiana/login_screen.dart';
import 'package:tugaspm2_rizqiana/styles.dart';

import 'news.dart';
import 'news_detail_screen.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key, required this.email}) : super(key: key);

  // Make the email final and type-safe
  final String email;

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "News",
            style: TextStyles.title,
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: ListView.builder(
            itemCount: news['articles'].length, // Number of items in the list
            itemBuilder: (context, index) {
              return Card(
                margin: EdgeInsets.all(10),
                elevation: 5,
                child: ListTile(
                  leading: Image.network(
                    "${news['articles'][index]['urlToImage']}",
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                    errorBuilder: (context, object, stack){
                      return Image.asset(R.ASSETS_IMAGES_ABOUT_ME_PNG);
                    },
                  ),
                  title: Text(news['articles'][index]['title']!),
                  //subtitle: Text(news['articles'][index]['description']!),
                  onTap: () {
                    // Handle item tap (for example, open a new screen)
                    // ScaffoldMessenger.of(context).showSnackBar(
                    //   SnackBar(
                    //       content: Text(
                    //           'Tapped on ${news['articles'][index]['title']}')),
                    // );
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NewsDetailScreen(
                            id: news['articles'][index]['source']['id'],
                            title: news['articles'][index]['title'],
                            description: news['articles'][index]['description'],
                            content: news['articles'][index]['description'],
                            image: news['articles'][index]['urlToImage']
                          )),
                    );
                  },
                ),
              );
            }));
  }
}
