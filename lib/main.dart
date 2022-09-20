import 'package:flutter/material.dart';
import 'package:flutter_web/responsive/desktop.dart';
import 'package:flutter_web/responsive/mobile.dart';
import 'package:flutter_web/responsive/responsive.dart';
import 'package:flutter_web/responsive/tablet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: ResponsiveLayout(
        mobileBody: const MobileScaffold(),
        tabletBody: const TabletScaffold(),
        desktopBody: const DesktopScaffold(),
      ),
    );
  }
}
