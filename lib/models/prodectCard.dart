import 'package:electrical_store_app/models/product.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class prodectCard extends StatelessWidget {
  prodectCard({
    super.key,
    required this.vvv,
    required this.Index,
    required this.prass,
  });
  final int Index;
  final Product vvv;
  final VoidCallback prass;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: prass,
        child: Container(
          alignment: Alignment.topCenter,
          height: 190,

          //  color: Colors.green,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  margin: EdgeInsets.only(top: 30),
                  height: 166,
                  width: 500,

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 15),
                        blurRadius: 15,
                        color: Colors.black54,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  height: 150,
                  width: 400,
                  child: Align(
                    alignment: Alignment.centerLeft, // يخلي الصورة شمال
                    child: Image.asset(vvv.image),
                  ),
                ),
              ),
              Positioned(
                bottom: 0.0,
                right: 20,
                child: SizedBox(
                  height: 136,
                  child: Column(
                    children: [
                      Text(
                        products[Index].title,
                        style: GoogleFonts.getFont(
                          'Almarai',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        products[Index].subTitle,
                        style: GoogleFonts.getFont(
                          'Almarai',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          color: Colors.amber,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 5,
                        ),
                        child: FittedBox(
                          child: Text(
                            'السعر:${products[Index].price}',
                            style: GoogleFonts.getFont(
                              'Almarai',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
