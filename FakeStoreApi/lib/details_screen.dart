import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsScreen extends StatelessWidget {
  String imgUrl;
  String title;
  String price;
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
                  height: 200,
                  width: double.infinity,
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
            Text(
              title,
              style: GoogleFonts.kalam(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              desc,
              style: GoogleFonts.inter(fontSize: 15),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              price,
              style:
                  GoogleFonts.inter(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Add to Favourites'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Add to Cart'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
