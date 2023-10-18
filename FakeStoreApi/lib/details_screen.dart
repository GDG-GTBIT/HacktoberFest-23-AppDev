import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  String imgUrl;
  String title;
  double price;
  String desc;
  DetailsScreen(
      {super.key,
      required this.imgUrl,
      required this.title,
      required this.price,
      required this.desc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            InteractiveViewer(
              maxScale: 3,
              child: Center(
                child: Container(
                  height: 170,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: NetworkImage(imgUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(title),
            const SizedBox(
              height: 20,
            ),
            Text(desc),
            const SizedBox(
              height: 20,
            ),
            Text('₹${price.toStringAsFixed(2)}'),
          ],
        ),
      ),
    );
  }
}
