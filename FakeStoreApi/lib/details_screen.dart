import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsScreen extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String price;
  final String desc;

  DetailsScreen({
    required this.imgUrl,
    required this.title,
    required this.price,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            spaceBox(30),
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
            spaceBox(20),
            Text(title, style: GoogleFonts.kalam(fontSize: 20)),
            spaceBox(20),
            Text(desc, style: GoogleFonts.inter(fontSize: 15)),
            spaceBox(20),
            Text(price, style: GoogleFonts.inter(fontSize: 15, fontWeight: FontWeight.bold)),
            spaceBox(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _styledButton('Add to Favourites'),
                _styledButton('Add to Cart'),
              ],
            ),
            spaceBox(20),
          ],
        ),
      ),
    );
  }

  SizedBox spaceBox(double height) => SizedBox(height: height);

  Widget _styledButton(String title) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
        primary: Colors.blue,
      ),
      child: Text(title),
    );
  }
}
