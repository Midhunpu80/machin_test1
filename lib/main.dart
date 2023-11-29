import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remote_task/controller/pagecontroller.dart';
import 'package:remote_task/view/screen/teamheadloginscreen.dart';
import 'package:remote_task/view/screen/teamscreen.dart';
import 'package:remote_task/view/screen/web/dashboardscreen.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

final page_cont = Get.put(PageControllerss());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(body: dashboradwebscreen()),
      );
    });
  }
}
