import 'package:flutter/material.dart';
import 'package:remote_task/view/utilities/alltext.dart';
import 'package:remote_task/view/utilities/colors.dart';
import 'package:sizer/sizer.dart';

personalloan() {
  var sp;
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            alltext(
                txt: "Target Loan File ",
                col: bl,
                siz: 3.sp,
                wei: FontWeight.w800,
                max: 1),
            alltext(
                txt: "Target Amount",
                col: bl,
                siz: 3.sp,
                wei: FontWeight.w800,
                max: 1),
            alltext(
                txt: "Achive Amount",
                col: bl,
                siz: 3.sp,
                wei: FontWeight.w800,
                max: 1),
            alltext(
                txt: "Due amount",
                col: bl,
                siz: 3.sp,
                wei: FontWeight.w800,
                max: 1)
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            alltext(
                txt: "               22",
                col: bl,
                siz: 2.sp,
                wei: FontWeight.bold,
                max: 1),
            alltext(
                txt: "22", col: bl, siz: 2.sp, wei: FontWeight.bold, max: 1),
            alltext(
                txt: "22", col: bl, siz: 2.sp, wei: FontWeight.bold, max: 1),
            alltext(
                txt: "22     ",
                col: bl,
                siz: 2.sp,
                wei: FontWeight.bold,
                max: 1),
          ],
        )
      ],
    ),
  );
}

targetcountscard({required var txt, required var txt2}) {
  return Container(
    height: 12.h,
    width: 18.w,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1.h),
        color: wh,
        boxShadow: [
          BoxShadow(
            offset: Offset.zero,
            color: gy,
            blurRadius: 5,
          )
        ]),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          alltext(txt: txt, col: bl, siz: 4.sp, wei: FontWeight.w400, max: 1),
          SizedBox(
            width: 1.h,
          ),
          alltext(txt: txt2, col: sr, siz: 5.sp, wei: FontWeight.bold, max: 1)
        ],
      ),
    ),
  );
}

targetrow({required var txt, required double siz, required var wei}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        alltext(txt: txt, col: bl.withOpacity(0.3), siz: siz, wei: wei, max: 1),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.keyboard_arrow_down_sharp,
            color: sr,
            size: 5.h,
          ),
        )
      ],
    ),
  );
}

targettitles({required var txt}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Align(
        alignment: Alignment.topLeft,
        child: SizedBox(
            child: alltext(
                txt: txt, col: sr, siz: 5.sp, wei: FontWeight.bold, max: 1))),
  );
}
