import 'package:flutter/material.dart';
import 'package:shoponline/menu_add.dart';

class Shopping_cart_screen extends StatefulWidget {
  const Shopping_cart_screen({super.key});

  @override
  State<Shopping_cart_screen> createState() => _Shopping_cart_screenState();
}

class _Shopping_cart_screenState extends State<Shopping_cart_screen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your Cart',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.grey),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Your Cart'),
          
        ),
        drawer: const MenuHome(),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: const BorderSide(color: Colors.deepPurple, width: 1)),
              child: ListTile(
                title: const Text(
                  'Phan Thị Thu Hằng',
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.phone_android,
                          color: Colors.black87,
                        ),
                        Text(
                          '0335029637',
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.email_outlined,
                          color: Colors.black87,
                        ),
                        Text(
                          'nguyennhi1642017@gmail.com',
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: const BorderSide(color: Colors.deepPurple, width: 1)),
              child: ListTile(
                title: const Text(
                  'Tran Thanh Dan',
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.phone_android,
                          color: Colors.black87,
                        ),
                        Text(
                          '06767923434',
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.email_outlined,
                          color: Colors.black87,
                        ),
                        Text(
                          'dantt@gmail.com',
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
