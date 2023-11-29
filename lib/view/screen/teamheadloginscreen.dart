import 'package:flutter/material.dart';
import 'package:remote_task/view/utilities/colors.dart';
import 'package:remote_task/view/widgets/teamscreenlogin.dart';
import 'package:responsive_builder/responsive_builder.dart';

class teamHeadscreenlogin extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sr,
      body: Column(children: [
        screenscreelogincard(context: context,
            headtxt: "Team Head Login",
            hint: "Enter MPIN",
            label: "Mobile MPIN")
      ]),
    );
  }
}
