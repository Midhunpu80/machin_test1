import 'package:flutter/material.dart';
import 'package:remote_task/view/utilities/alltext.dart';
import 'package:remote_task/view/utilities/colors.dart';
import 'package:sizer/sizer.dart';

Widget getotpbutton() {
  return Container(
    height: 5.h,
    width: 28.w,
    decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(1.h), color: sr),
    child: Center(
      child: alltext(
          txt: "Get OTP", col: wh, siz: 2.sp, wei: FontWeight.bold, max: 1),
    ),
  );
}
