import 'package:flutter/material.dart';

import 'info_card.dart';

class OverViewMediumScreen extends StatelessWidget {
  const OverViewMediumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            InfoCard(
              title: 'Ride progress',
              value: '5',
              onTap: () {},
              topColor: Colors.orange,
            ),
            SizedBox(
              width: _width / 64,
            ),
            InfoCard(
              title: 'Package progress',
              value: '7',
              onTap: () {},
              topColor: Colors.blue,
            ),
          ],
        ),
        SizedBox(height: 16,),
        Row(
          children: [
            InfoCard(
              title: 'Television progress',
              value: '9',
              onTap: () {},
              topColor: Colors.red,
            ),
            SizedBox(
              width: _width / 64,
            ),
            InfoCard(
              title: 'Corner progress',
              value: '25',
              onTap: () {},
              topColor: Colors.indigo,
            ),
          ],
        )
      ],
    );
  }
}
