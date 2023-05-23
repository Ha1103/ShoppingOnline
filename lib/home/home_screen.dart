import 'package:flutter/material.dart';
import 'package:shoponline/menu_add.dart';
import 'package:shoponline/shopping_cart/shopping_cart_screen.dart';
import 'package:shoponline/home/coponents/new_arrival_products.dart';
import 'package:shoponline/home/coponents/popular_products.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Shopping Online',
          style: TextStyle(color: Colors.black87),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Shopping_cart_screen()),
              );
            },
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black87,
            ),
          )
        ],
      ),
      drawer: const MenuHome(),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Form(
                child: TextFormField(
              decoration: const InputDecoration(
                hintText: "Search items...",
                filled: true,
                border: outlineInputBorder,
                enabledBorder: outlineInputBorder,
                focusedBorder: outlineInputBorder,
                prefixIcon: Padding(
                  padding: EdgeInsets.all(12),
                  child: Icon(Icons.search_outlined),
                ),
                suffixIcon: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: defaultPadding,
                    vertical: defaultPadding / 2,
                  ),
                  child: SizedBox(
                    height: 40,
                    width: 50,
                  ),
                ),
              ),
            )),
            const SizedBox(
              height: 20,
            ),
            const NewArrivalProducts(),
            const PopularProducts(),
          ],
        ),
      ),
    );
  }
}

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
  borderSide: BorderSide.none,
);

const double defaultPadding = 16.0;
const double defaultBorderRadius = 12.0;
