import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  final String userId;
  final String path;

  const NewsPage({Key? key, required this.userId, required this.path})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("News Detail Page"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 24),
          const Center(
              child: Text(
            "News Detail Information",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          )),
          SizedBox(height: 16),
          Text("User ID: $userId"),
          Text("News URL: \nhttps://$userId.medium.com/$path")
        ],
      ),
    );
  }
}
