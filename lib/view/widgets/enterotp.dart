import 'package:flutter/material.dart';
import 'package:remote_task/view/utilities/alltext.dart';
import 'package:remote_task/view/utilities/colors.dart';
import 'package:sizer/sizer.dart';

enterotp(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Container(
            height: 22.h,
            width: 20.w,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.h),
                  child: SizedBox(
                    child: alltext(
                        txt: "Enter OTP",
                        col: bl,
                        siz: 3.sp,
                        wei: FontWeight.w800,
                        max: 1),
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Container(
                  height: 6.h,
                  width: 20.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      otpfields(),
                      otpfields(),
                      otpfields(),
                      otpfields(),
                      otpfields(),
                      otpfields(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                SizedBox(
                  width: 8.w,
                  height: 5.h,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: sr),
                      onPressed: () {},
                      child: alltext(
                          txt: "Verify",
                          col: wh,
                          siz: 2.sp,
                          wei: FontWeight.w800,
                          max: 1)),
                )
              ],
            ),
          ),
        );
      });
}

Widget otpfields() {
  return SizedBox(
    height: 5.h,
    width: 2.w,
    child: TextFormField(
      decoration: InputDecoration(
//          hintStyle: TextStyle(fontSize: 2.sp, color: bl),

          border: OutlineInputBorder()),
    ),
  );
}
