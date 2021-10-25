import 'package:flutter/material.dart';
import 'package:flutterweb/page/overview/widgets/info_card_small.dart';

class OverViewCardSmallScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      height: 400,
      child: Column(
        children: [
          InfoCardSmall(
            title: 'Rider in progress',
            value: '5',
            onTap: () {},
            isActive: true,
          ),
          SizedBox(
            height: _width / 64,
          ),
          InfoCardSmall(
            title: 'Package progress',
            value: '7',
            onTap: () {},
          ),
          SizedBox(
            height: _width/64,
          ),
          InfoCardSmall(
            title: 'Television progress',
            value: '9',
            onTap: () {},
          ),
          SizedBox(
            height: _width/64,
          ),
          InfoCardSmall(
            title: 'Corner progress',
            value: '25',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
