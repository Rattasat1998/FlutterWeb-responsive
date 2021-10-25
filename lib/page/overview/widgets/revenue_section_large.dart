import 'package:flutter/material.dart';
import 'package:flutterweb/constants/style.dart';
import 'package:flutterweb/page/overview/widgets/bar_chart.dart';
import 'package:flutterweb/page/overview/widgets/revenue_info.dart';
import 'package:flutterweb/widgets/custom_text.dart';

class RevenueSectionLarge extends StatelessWidget {
  const RevenueSectionLarge({Key? key}) : super(key: key);

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
      child: Row(
        children: [
          Expanded(child: Column(
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
              )
            ],
          )),
          Container(
            width: 1,
            height: 120,
            color: lightGrey,
          ),
          Expanded(child: Column(
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
          ))
        ],
      ),
    );
  }
}
