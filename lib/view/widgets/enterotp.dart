import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
                      otpfields(context),
                      otpfields(context),
                      otpfields(context),
                      otpfields(context),
                      otpfields(context),
                      otpfields(context),
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

Widget otpfields(BuildContext context) {
  return SizedBox(
    height: 5.h,
    width: 3.w,
    child: TextFormField(
      onChanged: (value) {
        if (value.length == 1) {
          FocusScope.of(context).nextFocus();
        } else if (value.length == 1) {
          FocusScope.of(context).previousFocus();
        }
      },
      inputFormatters: [LengthLimitingTextInputFormatter(1)],
      style: TextStyle(fontSize: 3.sp, fontWeight: FontWeight.bold),
      decoration: InputDecoration(

//          hintStyle: TextStyle(fontSize: 2.sp, color: bl),

          border: OutlineInputBorder()),
    ),
  );
}
