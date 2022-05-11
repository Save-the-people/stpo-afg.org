import 'package:flutter/material.dart';

class BannerItems extends StatelessWidget {
  const BannerItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 0),
        height: 400.0,
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        child: Image.asset(
          'assets/banner.jpeg',
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
