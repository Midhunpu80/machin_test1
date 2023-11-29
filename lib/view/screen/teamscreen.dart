import 'package:flutter/material.dart';
import 'package:remote_task/view/utilities/colors.dart';
import 'package:remote_task/view/widgets/teamscreenlogin.dart';
import 'package:responsive_builder/responsive_builder.dart';

class teamscreenlogin extends StatelessWidget {
  const teamscreenlogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sr,
      body: Column(children: [
        screenscreelogincard(context: context,
            headtxt: "HR/Team Head Login",
            hint: "Enter Mobile Number",
            label: "Mobile Number")
      ]),
    );
  }
}
