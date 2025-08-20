import 'package:electrical_store_app/constants.dart';
import 'package:electrical_store_app/main.dart';
import 'package:electrical_store_app/models/Home.dart';
import 'package:electrical_store_app/models/product.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class detilsItem extends StatelessWidget {
  const detilsItem({super.key, required this.namber, required this.item});
  final int namber;
  final Product item;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          //  automaticallyImplyLeading: false,
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
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 600,

                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100),
                      bottomRight: Radius.circular(100),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Center(
                        child: ClipRRect(
                          child: CircleAvatar(
                            backgroundColor: kPrimaryColor,
                            maxRadius: 130,
                          ),
                        ),
                      ),
                      Center(
                        child: ClipRRect(
                          child: CircleAvatar(
                            backgroundColor: Color.fromARGB(128, 205, 202, 226),
                            maxRadius: 100,
                            child: Center(
                              child: Image.asset(item.image, fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 430, left: 160),
                        child: ClipRRect(
                          child: CircleAvatar(
                            backgroundColor: Color.fromARGB(128, 231, 32, 25),
                            maxRadius: 5,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 430, left: 205),
                        child: ClipRRect(
                          child: CircleAvatar(
                            backgroundColor: const Color.fromARGB(
                              255,
                              3,
                              135,
                              7,
                            ),
                            maxRadius: 5,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 430, left: 250),
                        child: ClipRRect(
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            maxRadius: 5,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 470, left: 200),
                        child: Column(
                          children: [
                            Text(
                              item.title,
                              style: GoogleFonts.getFont(
                                'Almarai',
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'السعر:${item.price}',
                              style: GoogleFonts.getFont(
                                'Almarai',
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 620),
                  child: Text(
                    'مرحبا بكم في متجر الهوارى ونتمنى لكم ',
                    style: GoogleFonts.getFont(
                      'Almarai',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: Text(
                    'الصحة والعافية',
                    style: GoogleFonts.getFont(
                      'Almarai',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
    ;
  }
}
