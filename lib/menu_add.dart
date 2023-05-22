import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shoponline/home/home_screen.dart';
import 'package:shoponline/profile/profile.dart';

class MenuHome extends StatefulWidget {
  const MenuHome({super.key});

  @override
  State<MenuHome> createState() => _MenuHomeState();
}

void _showScreen(var context, var screen) {
  Navigator.pop(context);
  Navigator.pushReplacement(
    context,
    PageTransition(
      child: screen,
      type: PageTransitionType.rightToLeftWithFade,
      duration: Duration(microseconds: 5000),
    ),
  );
}

class _MenuHomeState extends State<MenuHome> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.grey,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Icon(
                    Icons.account_circle_outlined,
                    size: 100,
                  ),
                  Text(
                    'My account',
                    textScaleFactor: 1.5,
                  ),
                ],
              )),
          ListTile(
            leading: const Icon(Icons.home_filled),
            title: const Text('Home'),
            onTap: () {
              _showScreen(context, const Home_screen());
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_circle_outlined),
            title: const Text('Profile'),
            onTap: () {
              _showScreen(context, const ProfilePage1());
            },
          ),
        ],
      ),
    );
  }
}
