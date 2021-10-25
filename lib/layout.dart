import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterweb/helpers/responsiveness.dart';
import 'package:flutterweb/widgets/large_screen.dart';
import 'package:flutterweb/widgets/side_menu.dart';
import 'package:flutterweb/widgets/small_screen.dart';
import 'package:flutterweb/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar:topNavigationBar(context, scaffoldKey,),
      key: scaffoldKey,
      drawer: Drawer(child: SideMenu(),),
      body: ResponsiveWidget(largeScreen: LargeScreen(),smallScreen: SmallScreen(), mediumScreen: LargeScreen(),)
    );
  }
}
