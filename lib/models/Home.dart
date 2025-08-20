import 'package:electrical_store_app/models/detilsItem.dart';
import 'package:electrical_store_app/models/prodectCard.dart';
import 'package:electrical_store_app/models/product.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 28),
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
