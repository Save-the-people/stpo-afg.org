import 'package:flutter/material.dart';

import '../helpers/constants.dart';
import '../helpers/metaData.dart';
import 'desktop/desktop_screen.dart';
import 'mobile/drawers.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: _size >= mobileWidth
          ? null
          : AppBar(
              backgroundColor: primaryColor,
              title: logoTitle,
            ),
      drawer: const Drawers(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: _size <= mobileWidth ? 3 : 60.0,
              child: _size <= mobileWidth ? null : const DesktopHeader(),
            ),
            Container(
              height: _size <= mobileWidth ? 200 : 600,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/banner.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Card(
                child: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 18.0),
                      child: Text(
                        'Save The People Orgranistion',
                        style: header1,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Text(
                        overViewText,
                        style: header2,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Card(
                child: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 18.0),
                      child: Text('Our Vission', style: header1),
                    ),
                    Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Text(
                        ourVisionText,
                        style: header2,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Card(
                child: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 18.0),
                      child: Text('Our Mission', style: header1),
                    ),
                    Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Text(
                        ourMission,
                        style: header2,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: const [
                  Text(
                    'Copyright ©2022, All Rights Reserved.',
                    style: footerSt,
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Powered by STPO-AFG.ORG',
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w300,
                        fontSize: 12.0,
                        color: Color(0xFF162A49)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
