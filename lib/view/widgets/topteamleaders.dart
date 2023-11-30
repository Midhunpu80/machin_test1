import 'package:flutter/material.dart';
import 'package:remote_task/view/utilities/alltext.dart';
import 'package:remote_task/view/utilities/colors.dart';
import 'package:sizer/sizer.dart';

Widget topteamleaders() {
  return Container(
    height: 90.h,
    width: 85.w,
    color: gy.withOpacity(0.1),
    child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 2.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              teamcountscard(txt: "Total Login FIle", txt2: "2"),
              teamcountscard(txt: "Total Approved", txt2: "251"),
              teamcountscard(txt: "Total rejected", txt2: "2505551"),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 49.h, top: 2.h),
            child: Row(
              children: [
                teamcountscard(txt: "In Preogress", txt2: "21"),
                SizedBox(
                  width: 2.w,
                ),
                teamcountscard(txt: "Disburesed Amount", txt2: "551"),
              ],
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
                child: alltext(
                    txt: "Top Team Leader (Level 5)",
                    col: sr,
                    siz: 4.sp,
                    wei: FontWeight.bold,
                    max: 1)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 48.h,
                width: 75.w,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(1.h)),
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Container(
                        height: 7.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: gy),
                            borderRadius: BorderRadius.circular(1.h)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                backgroundColor: sr,
                                backgroundImage:const  AssetImage(
                                    "images/ElonMusk_1651076367069_1651076367208.webp"),
                              ),
                              alltext(
                                  txt: "Priyasharama",
                                  col: bl,
                                  siz: 3.sp,
                                  wei: FontWeight.w400,
                                  max: 1),
                              alltext(
                                  txt: "Priyasharama@gmail.com",
                                  col: bl,
                                  siz: 3.sp,
                                  wei: FontWeight.w400,
                                  max: 1),
                              alltext(
                                  txt: "7Files",
                                  col: bl,
                                  siz: 3.sp,
                                  wei: FontWeight.w400,
                                  max: 1),
                              alltext(
                                  txt: "2505551",
                                  col: bl,
                                  siz: 3.sp,
                                  wei: FontWeight.bold,
                                  max: 1)
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 3.h,
                      );
                    },
                    itemCount: 5),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

teamcountscard({required var txt, required var txt2}) {
  return Container(
    height: 14.h,
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          alltext(txt: txt, col: bl, siz: 4.sp, wei: FontWeight.w400, max: 1),
          alltext(txt: txt2, col: sr, siz: 5.sp, wei: FontWeight.bold, max: 1)
        ],
      ),
    ),
  );
}
