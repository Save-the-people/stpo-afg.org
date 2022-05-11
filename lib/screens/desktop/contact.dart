import 'package:flutter/material.dart';

import '../../helpers/constants.dart';
import '../../helpers/metaData.dart';
import 'desktop_screen.dart';

class ContactUs extends StatelessWidget {
  static const routeName = '/contact';
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: _size >= mobileWidth
          ? null
          : AppBar(
              title: logoTitle,
            ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                flex: 1,
                child: _size < 600 ? Container() : const DesktopHeader()),
            Expanded(
              flex: 8,
              child: Container(
                padding: const EdgeInsets.all(defPadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 28.0),
                      child: Text('Contact Us', style: header1),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text('Address: ', style: aboutSt),
                              Text(address),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Contact Number: ',
                                style: aboutSt,
                              ),
                              Text(contact)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Email Address: ',
                                style: aboutSt,
                              ),
                              Text(email)
                            ],
                          ),
                        ],
                      ),
                    ),
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
