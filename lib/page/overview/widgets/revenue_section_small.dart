import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterweb/constants/style.dart';
import 'package:flutterweb/page/overview/widgets/revenue_info.dart';
import 'package:flutterweb/widgets/custom_text.dart';

import 'bar_chart.dart';

class RevenueSectionSmall extends StatelessWidget {
  const RevenueSectionSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      margin: EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(offset: Offset(0,6),color: lightGrey.withOpacity(.1),blurRadius: 12)
        ],
        border: Border.all(color: lightGrey,width: .5),
      ),
      child: Column(
        children: [
          Container(
            height: 260,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomText(
                  text: 'ผังรายได้',
                  size: 22,
                  weight: FontWeight.bold,
                  color: lightGrey,
                ),
                Container(
                  width: 600,
                  height: 200,
                  child: SimpleBarChart.withSampleData(),
                ),
              ],
            ),
          ),
          Container(
            width: 120,
            height: 1,
            color: lightGrey,
          ),
          Container(
            height: 260,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    RevenueInfo(
                      title: 'Today\'s revenue',
                      amount: '23',
                    ),
                    RevenueInfo(
                      title: 'Last 7 days',
                      amount: '200',
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    RevenueInfo(
                      title: 'Last 30 days',
                      amount: '2,000',
                    ),
                    RevenueInfo(
                      title: 'Last 5 months',
                      amount: '12,521',
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
