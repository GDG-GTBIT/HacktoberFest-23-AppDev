import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

void main() {
  runApp(NewApp());
}

class NewApp extends StatefulWidget {
  @override
  State<NewApp> createState() => _NewAppState();
}

class _NewAppState extends State<NewApp> {
  List<dynamic> products = []; // List to store fetched products
  late Future googleFontsPending;

  void fetchProducts() async {
    final response =
        await http.get(Uri.parse("https://fakestoreapi.com/products"));

    if (response.statusCode == 200) {
      setState(() {
        products = jsonDecode(response.body);
      });
    } else {
      print('Failed to fetch products. Error code: ${response.statusCode}');
    }
  }

  @override
  void initState() {
    super.initState();
    googleFontsPending = GoogleFonts.pendingFonts([
      GoogleFonts.roboto(fontWeight: FontWeight.bold),
      GoogleFonts.montserrat(fontStyle: FontStyle.italic),
    ]);
    fetchProducts(); // Fetch products when the app starts
  }

  @override
  Widget build(BuildContext context) {
    final counterTextStyle = GoogleFonts.racingSansOne(
        textStyle: Theme.of(context).textTheme.displaySmall, fontSize: 14);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fake Store Products'),
        ),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                leading: Image.network(products[index]['image']),
                title: Text(products[index]['title']),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Price: ${products[index]['price']}',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Category: ${products[index]['category']}',
                      style: const TextStyle(fontStyle: FontStyle.italic),
                    ),
                    ReadMoreText(
                      'Description: ${products[index]['description']}',
                      trimLines: 2,
                      colorClickableText: Colors.pink,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: ' Show more ',
                      trimExpandedText: ' Show less ',
                      lessStyle: TextStyle(
                          color: Colors.blueGrey[500], fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                      moreStyle: TextStyle(
                          color: Colors.blue[500], fontWeight: FontWeight.bold),

                      style: counterTextStyle,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 4, bottom: 4),
                          width: 25, // Set a fixed width for the square
                          height: 25, // Set a fixed height for the square
                          color: Colors
                              .blue, // Set a background color for the square
                          child: Center(
                            child: Text(
                              '${products[index]['rating']['rate']}',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                            width:
                                10), // Add some space between the square and text
                        Text('(${products[index]['rating']['count']} ratings)'),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
