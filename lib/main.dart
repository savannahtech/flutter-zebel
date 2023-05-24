import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<Review> reviews = [];
    // This widget is the root of your application.
    reviews.add(Review('test1', 'test1 content'));
    reviews.add(Review('test2', 'test2 content'));
    reviews.add(Review('test3', 'test3 content'));
    reviews.add(Review('test4', 'test4 content'));
    reviews.add(Review('test5', 'test5 content'));
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:  ReviewsScreen(reviews),
    );
  }
}

class Review {
  final String title;
  final String content;
  Review(this.title, this.content);
}

class ReviewsScreen extends StatelessWidget {
  final List<Review> reviews;

  const ReviewsScreen(this.reviews);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reviews')),
      body: Column(
        children: <Widget>[
          Text('Product Reviews', style: TextStyle(fontSize: 24)),
          Flexible(
            child: ListView.builder(
              itemCount: reviews.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(reviews[index].title),
                  subtitle: Text(reviews[index].content),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

