import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localization/screens.dart';
import 'package:localization/utils/app_string.dart';

class NextModuleScreen extends StatefulWidget {
  const NextModuleScreen({super.key});

  @override
  State<NextModuleScreen> createState() => _NextModuleScreenState();
}

class _NextModuleScreenState extends State<NextModuleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [InkWell(onTap: (){
        Get.to(HomeModuleScreen());
      },child: Text(AppString.T.bengali)), Text(AppString.T.hindi), Text(AppString.T.english)]),
    );
  }
}
