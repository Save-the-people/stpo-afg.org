import 'package:flutter/material.dart';

import '../../helpers/constants.dart';
import '../home_screen.dart';
import 'about.dart';
import 'contact.dart';

class DesktopHeader extends StatelessWidget {
  const DesktopHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 60,
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            decoration: const BoxDecoration(
              color: primaryColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: const BoxDecoration(
                    border: Border(
                      right: BorderSide(color: whiteColor),
                    ),
                  ),
                  child: logoTitle,
                ),
                const Spacer(),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(HomeScreen.routeName);
                      },
                      child: _buildText('Home'),
                      style: bStyle,
                    ),
                    const SizedBox(width: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(ContactUs.routeName);
                      },
                      child: _buildText('Contact Us'),
                      style: bStyle,
                    ),
                    const SizedBox(width: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(AboutUs.routeName);
                      },
                      child: _buildText('About Us'),
                      style: bStyle,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Text _buildText(String title) => Text(title, style: textStyle);
}
