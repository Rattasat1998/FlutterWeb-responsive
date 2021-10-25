import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterweb/constants/style.dart';
import 'package:flutterweb/widgets/custom_text.dart';

/// Example without datasource
class ClientsTable extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(offset: Offset(0,6),color: lightGrey.withOpacity(.1),blurRadius: 12)
        ],
        border: Border.all(color: lightGrey,width: .5),
      ),
      padding: EdgeInsets.all(16),
      child: DataTable2(
          columnSpacing: 12,
          horizontalMargin: 12,
          minWidth: 600,
          columns: [
            DataColumn2(
              label: Text('ชื่อ'),
              size: ColumnSize.L,
            ),
            DataColumn(
              label: Text('ที่อยู่'),
            ),
            DataColumn(
              label: Text('ความนิยม'),
            ),
            DataColumn(
              label: Text('สถานะ'),
            ),
          ],
          rows: List<DataRow>.generate(
              10,
                  (index) => DataRow(cells: [
                DataCell(CustomText(text: 'Santa Dev',)),
                DataCell(CustomText(text: 'New York',)),
                DataCell(Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.star,color: Colors.deepOrange,size: 28,),
                    SizedBox(width: 5,),
                    CustomText(text: '4.$index',)
                  ],
                )),
                DataCell(Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: active,width: .5),
                    color: light,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 6),
                  child: CustomText(
                    text: 'บล็อก ลูกค้า',
                    color: active.withOpacity(.7),
                    weight: FontWeight.bold,
                  ),
                ))
              ]))),
    );
  }
}