import 'package:flutter/material.dart';

import '../../helpers/constants.dart';
import '../desktop/about.dart';
import '../desktop/contact.dart';
import '../home_screen.dart';

class Drawers extends StatelessWidget {
  const Drawers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        backgroundColor: primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin:
                  const EdgeInsets.only(top: defPadding, bottom: defPadding),
              padding: const EdgeInsets.all(1.0),
              height: 80.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: activeColor,
                ),
              ),
              child: Image.asset('assets/1.jpeg', fit: BoxFit.cover),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed(HomeScreen.routeName);
              },
              title: const Text('Home', style: drawerStyle),
              leading: const Icon(Icons.home, color: activeColor),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed(ContactUs.routeName);
              },
              title: const Text('Contact Us', style: drawerStyle),
              leading: const Icon(Icons.email_outlined, color: activeColor),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed(AboutUs.routeName);
              },
              title: const Text('About Us', style: drawerStyle),
              leading: const Icon(Icons.info_outline, color: activeColor),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 10.0, bottom: 20.0),
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(color: primaryColor),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Copyright ©2022, All Rights Reserved.',
                      style: footerStyle.copyWith(fontSize: 12.0),
                    ),
                    const SizedBox(height: 5.0),
                    const Text('Powered by STPO', style: footerStyle),
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
