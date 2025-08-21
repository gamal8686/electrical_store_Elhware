import 'package:electrical_store_app/Bage/cafer.dart';
import 'package:electrical_store_app/Bage/handFire.dart';
import 'package:electrical_store_app/Bage/mobail.dart';
import 'package:electrical_store_app/Bage/smart.dart';
import 'package:electrical_store_app/constants.dart';
import 'package:electrical_store_app/models/Home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            SizedBox(height: 150),
            Text(
              'الاقسام  :',
              style: GoogleFonts.getFont(
                'Almarai',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
            ),
            SizedBox(height: 30),
            MaterialButton(
              minWidth: 250,
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => mobail()),
                );
              },
              height: 50,
              color: kPrimaryColor,
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(5),
              ),
              child: Text(
                'اجهزة الموبيل',
                style: GoogleFonts.getFont(
                  'Almarai',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: kTextColor,
                ),
              ),
            ),
            SizedBox(height: 30),
            MaterialButton(
              minWidth: 250,
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => handFire()),
                );
              },
              height: 50,
              color: kPrimaryColor,
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(5),
              ),
              child: Text(
                'اجهزة السماعات',
                style: GoogleFonts.getFont(
                  'Almarai',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: kTextColor,
                ),
              ),
            ),
            SizedBox(height: 30),
            MaterialButton(
              minWidth: 250,
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => smart()),
                );
              },
              height: 50,
              color: kPrimaryColor,
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(5),
              ),
              child: Text(
                'اجهزة ساعات الاسمارت',
                style: GoogleFonts.getFont(
                  'Almarai',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: kTextColor,
                ),
              ),
            ),
            SizedBox(height: 30),
            MaterialButton(
              minWidth: 250,
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => cafer()),
                );
              },
              height: 50,
              color: kPrimaryColor,
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(5),
              ),
              child: Text(
                ' الكفر الخارجى',
                style: GoogleFonts.getFont(
                  'Almarai',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: kTextColor,
                ),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          'مرحبا بكم في متجر الهوارى',

          style: GoogleFonts.getFont(
            'Almarai',
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        // actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
      ),
      body: Home(),
    );
  }
}
