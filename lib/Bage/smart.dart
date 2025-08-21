import 'package:electrical_store_app/constants.dart';
import 'package:electrical_store_app/main.dart';
import 'package:electrical_store_app/models/detilsItem.dart';
import 'package:electrical_store_app/models/prodectCard.dart';
import 'package:electrical_store_app/models/product.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class smart extends StatefulWidget {
  const smart({super.key});

  @override
  State<smart> createState() => smartState();
}

class smartState extends State<smart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => HomePage()),
            ),
            icon: Icon(Icons.arrow_back),
          ),
        ],
      ),
      backgroundColor: kPrimaryColor,
      body: Column(
        children: [
          SizedBox(height: 10),
          Text(
            '  سماعات الاسمارت ',
            style: GoogleFonts.getFont(
              'Almarai',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) => prodectCard(
                    vvv: products[index],
                    Index: index,
                    prass: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              detilsItem(namber: index, item: products[index]),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
