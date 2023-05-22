import 'package:flutter/material.dart';
import 'package:shoponline/home/home_screen.dart';

class SignInPage2 extends StatelessWidget {
  const SignInPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.grey),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SignUp'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              // căn theo chiều dọc
              // cross đi chung với row là căn theo chiều ngang
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Username: '),
                const SizedBox(height: 20),
                const TextField(
                  // tạo khung cho textfield
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
                const SizedBox(height: 20),
                const Text('Password'),
                const SizedBox(height: 20),
                const TextField(
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Home_screen()),
                      );
                    },
                    child: const Text('Signin'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
