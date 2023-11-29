import 'package:flutter/material.dart';
import 'package:remote_task/view/utilities/alltext.dart';
import 'package:remote_task/view/utilities/colors.dart';
import 'package:remote_task/view/widgets/enterotp.dart';
import 'package:remote_task/view/widgets/everytextfields.dart';
import 'package:remote_task/view/widgets/getotptbutton.dart';
import 'package:sizer/sizer.dart';

screenscreelogincard(
    {required var headtxt, required var hint, required label,required BuildContext context}) {
  return Padding(
    padding: EdgeInsets.only(top: 20.h),
    child: Center(
      child: Container(
        height: 55.h,
        width: 40.w,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(2.h), color: wh),
        child: Column(
          children: [
            SizedBox(
              height: 13.h,
            ),
            alltext(
                txt: headtxt, col: bl, siz: 3.sp, wei: FontWeight.w400, max: 1),
            SizedBox(
              height: 4.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: 4.h,
                  child: alltext(
                      txt: label,
                      col: bl,
                      siz: 2.sp,
                      wei: FontWeight.w400,
                      max: 1),
                ),
              ),
            ),
            everytextfields(hint: hint),
            SizedBox(
              height: 4.h,
            ),
            InkWell(
                onTap: () {
                  enterotp(context);
                },
                child: getotpbutton()),
          ],
        ),
      ),
    ),
  );
}
