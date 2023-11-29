import 'package:flutter/material.dart';
import 'package:remote_task/view/utilities/alltext.dart';
import 'package:remote_task/view/utilities/colors.dart';
import 'package:sizer/sizer.dart';

Widget totalfiles2() {
  return Container(
    height: 90.h,
    width: 85.w,
    color: wh,
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 2.h, left: 2.h),
          child: Row(
            children: [
              alltext(
                  txt: "Total Files",
                  col: sr,
                  siz: 4.sp,
                  wei: FontWeight.bold,
                  max: 1),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 5.h,
                  width: 20.w,
                  color: wh,
                  child: Row(
                    children: [
                      Icon(
                        Icons.search_rounded,
                        color: bl,
                      ),
                      alltext(
                          txt: "Search",
                          col: bl,
                          siz: 2.sp,
                          wei: FontWeight.w400,
                          max: 1),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: sr),
                            child: Icon(
                              Icons.tune,
                              color: wh,
                            )),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        filedetails2(count: 10),
      ],
    ),
  );
}

filedetails2({required var count}) {
  return Container(
    height: 70.h,
    width: 82.w,
    child: ListView.separated(
        itemBuilder: (context, index) {
          return Padding(
            padding:  EdgeInsets.only(left: 3.h),
            child: Row(
             /// mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                alltext(
                    txt: index == 0 ? "Name" : "priya sharama",
                    col: sr,
                    siz: index == 0 ? 4.sp : 3.sp,
                    wei: index == 0 ? FontWeight.bold : FontWeight.w400,
                    max: 1),
                  index==0?SizedBox(width: 42.h,):  SizedBox(width: 35.h,),
                alltext(
                    txt: index == 0 ? "Email" : "priyaama@gmail.com",
                    col: sr,
                    siz: index == 0 ? 4.sp : 3.sp,
                    wei: index == 0 ? FontWeight.bold : FontWeight.w200,
                    max: 1),
                                      index==0?SizedBox(width: 42.h,):  SizedBox(width: 35.h,),

                alltext(
                    txt: index == 0 ? "       Mobile" : "9061603155",
                    col: sr,
                    siz: index == 0 ? 4.sp : 3.sp,
                    wei: FontWeight.bold,
                    max: 1),
                                      index==0?SizedBox(width: 42.h,):  SizedBox(width: 35.h,),
              
                index == 0
                    ? alltext(
                        txt: "        ",
                        col: sr,
                        siz: index == 0 ? 4.sp : 3.sp,
                        wei: FontWeight.bold,
                        max: 1)
                    : Container(
                        height: 4.h,
                        width: 6.w,
                        decoration: BoxDecoration(
                            color: sr, borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: alltext(
                              txt: "View Details",
                              col: wh,
                              siz: 2.sp,
                              wei: FontWeight.bold,
                              max: 1),
                        )),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 3.h,
          );
        },
        itemCount: count),
  );
}
