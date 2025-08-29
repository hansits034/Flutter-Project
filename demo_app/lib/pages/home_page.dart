import 'package:demo_app/constants/colors.dart';
import 'package:demo_app/constants/nav_items.dart';
import 'package:demo_app/styles/style.dart';
import 'package:demo_app/widgets/drawer_mobile.dart';
import 'package:demo_app/widgets/header_desktop.dart';
import 'package:demo_app/widgets/header_mobile.dart';
import 'package:demo_app/widgets/site_logo.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: CustomColor.scaffoldBg,
      endDrawer: DrawerMobile(),
      body: ListView(
        children: [
          // MAIN
          //HeaderDesktop(),
          HeaderMobile(
            onLogoTap: () {},
            onMenuTap: () {
              scaffoldKey.currentState?.openEndDrawer();
            },
          ),

           // SKILLS
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),

          // PROJECTS
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),

          // CONTACT
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),

           // FOOTER
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          )
        ],
      )
    );
  }
}