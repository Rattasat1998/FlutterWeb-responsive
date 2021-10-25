import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterweb/constants/controllers.dart';
import 'package:flutterweb/constants/style.dart';
import 'package:flutterweb/helpers/responsiveness.dart';
import 'package:flutterweb/page/authentication/authentications.dart';
import 'package:flutterweb/routing/routers.dart';
import 'package:flutterweb/widgets/custom_text.dart';
import 'package:flutterweb/widgets/side_menu_item.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: _width / 48,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Image.asset('assets/icons/logo.png'),
                    ),
                    Flexible(
                        child: CustomText(
                      text: 'Dashboard',
                      size: 20,
                      weight: FontWeight.bold,
                      color: active,
                    )),
                    SizedBox(width: _width/48,),

                  ],
                ),
              ],
            ),
          Divider(color: lightGrey.withOpacity(.1),),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems.map((item) => SideMenuItem(
              itemName: item.name,
              onTap: (){
                if(item.route == AuthenticationPageRoute){
                  menuController.changActiveItemTo(OverViewPageDisplayName);
                  Get.offAllNamed(AuthenticationPageRoute);
                }
                if(!menuController.isActive(item.name!)){
                  menuController.changActiveItemTo(item.name!);
                  if(ResponsiveWidget.isSmallScreen(context))
                    Get.back();
                  navigationController.navigateTo(item.route!);
                }
              },
            )).toList(),
          )
        ],
      ),
    );
  }
}
