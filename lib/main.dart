import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:frozen2goportal/controllers/controller.dart';
import 'package:frozen2goportal/screens/dash_board_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Frozen2Go Admin Portal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => Controller(),)
        ],
        child: DashBoardScreen(),
      ),
    );
  }
}

