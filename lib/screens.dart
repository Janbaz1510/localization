import 'package:flutter/material.dart';
import 'package:localization/utils/app_string.dart';

class HomeModuleScreen extends StatefulWidget {
  const HomeModuleScreen({super.key});

  @override
  State<HomeModuleScreen> createState() => _HomeModuleScreenState();
}

class _HomeModuleScreenState extends State<HomeModuleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [Text(AppString.T.bengali), Text(AppString.T.hindi), Text(AppString.T.english)]),
    );
  }
}
