import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterweb/page/overview/widgets/info_card.dart';

class OverViewCardLargeScreen extends StatelessWidget {
  const OverViewCardLargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        InfoCard(
          title: 'Ride progress',
          value: '5',
          onTap: () {},
          topColor: Colors.orange,
        ),
        SizedBox(
          width: _width/64,
        ),
        InfoCard(
          title: 'Package progress',
          value: '7',
          onTap: () {},
          topColor: Colors.blue,
        ),
        SizedBox(
          width: _width/64,
        ),
        InfoCard(
          title: 'Television progress',
          value: '9',
          onTap: () {},
          topColor: Colors.red,
        ),
        SizedBox(
          width: _width/64,
        ),
        InfoCard(
          title: 'Corner progress',
          value: '25',
          onTap: () {},
          topColor: Colors.indigo,
        ),
      ],
    );
  }
}
