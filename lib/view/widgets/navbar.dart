import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remote_task/view/screen/teamheadloginscreen.dart';
import 'package:remote_task/view/screen/teamscreen.dart';
import 'package:remote_task/view/utilities/alltext.dart';
import 'package:remote_task/view/utilities/colors.dart';
import 'package:sizer/sizer.dart';

Widget navbar() {
  return Container(
    height: 10.h,
    width: 85.w,
    color: sr,
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: (){

              Get.to(()=>teamscreenlogin());

            },
            child: SizedBox(
                child: alltext(
                    txt: "Dashborad",
                    col: wh,
                    siz: 4.sp,
                    wei: FontWeight.bold,
                    max: 1)),
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 16.w,
            height: 6.h,
          
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: (){
                                  Get.to(()=>teamHeadscreenlogin());

                  },
                  child: CircleAvatar(
                    backgroundColor: re,
                  ),
                ),
                alltext(
                    txt: "Priyanka Sharma",
                    col: wh,
                    siz: 2.sp,
                    wei: FontWeight.bold,
                    max: 1),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: wh,
                ),
                CircleAvatar(
                  backgroundColor: wh,
                  child: Icon(
                    Icons.notifications_active,
                    color: bl,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ),
  );
}
