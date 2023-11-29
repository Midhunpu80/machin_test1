import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remote_task/view/utilities/alltext.dart';
import 'package:remote_task/view/utilities/colors.dart';
import 'package:sizer/sizer.dart';

filter() {
  return Get.defaultDialog(
      title: "Filter",
      content: Container(
        height: 20.h,width: 20.w,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(height: 2.h,),
            TextButton.icon(
                onPressed: () {},
                icon: CircleAvatar(
                    radius: 1.h,
                    backgroundColor: sr,
                    child: Icon(
                      Icons.done,
                      color: wh,size: 2.h,
                    )),
                label: alltext(
                    txt: "Rejected",
                    col: bl,
                    siz: 3.sp,
                    wei: FontWeight.bold,
                    max: 1)),
                    SizedBox(height: 1.h,),
            TextButton.icon(
                onPressed: () {},
                icon: CircleAvatar(
                    radius: 1.h,
                    backgroundColor: gy,
                    child: Icon(
                      Icons.done,
                      color: gy,size: 2.h,
                    )),
                label: alltext(
                    txt: "Approved",
                    col: bl,
                    siz: 3.sp,
                    wei: FontWeight.bold,
                    max: 1)),
                                      SizedBox(height: 1.h,),
            TextButton.icon(
                onPressed: () {},
                icon: CircleAvatar(
                    radius: 1.h,
                    backgroundColor: gy,
                    child: Icon(
                      Icons.done,
                      color: gy,size: 2.h,
                    )),
                label: alltext(
                    txt: "iProgress",
                    col: bl,
                    siz: 3.sp,
                    wei: FontWeight.bold,
                    max: 1))
          ],
        ),
      ));
}
