import 'package:flutter/material.dart';
import 'package:frozen2goportal/constants/constants.dart';
import 'package:frozen2goportal/constants/responsive.dart';
import 'package:frozen2goportal/controllers/controller.dart';
import 'package:frozen2goportal/screens/components/dashboard_content.dart';

import 'components/drawer_menu.dart';
import 'package:provider/provider.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      drawer: DrawerMenu(),
      key: context.read<Controller>().scaffoldKey,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context)) Expanded(child: DrawerMenu(),),
            Expanded(
              flex: 5,
              child: DashboardContent(),
            )
          ],
        ),
      ),
    );
  }
}
