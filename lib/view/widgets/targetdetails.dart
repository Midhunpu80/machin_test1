import 'package:flutter/material.dart';
import 'package:remote_task/view/utilities/alltext.dart';
import 'package:remote_task/view/utilities/colors.dart';
import 'package:remote_task/view/widgets/personalloan.dart';
import 'package:remote_task/view/widgets/totalfiles2.dart';
import 'package:sizer/sizer.dart';

targetdetails() {
  return Container(
    height: 160.h,
    width: 85.w,
    color: gy.withOpacity(0.1),
    child: SingleChildScrollView(
      child: Column(
        children: [
          targettitles(txt: "Priya sharma"),
          SizedBox(
            height: 4.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              targetcountscard(txt: "Total Login File", txt2: "263"),
              targetcountscard(txt: "Total Approved", txt2: "633"),
              targetcountscard(txt: "Total rejected", txt2: "2")
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 35.h,
              ),
              targetcountscard(txt: "Im progress", txt2: "662"),
              SizedBox(
                width: 3.h,
              ),
              targetcountscard(txt: "Disbursed Amount ", txt2: "54546"),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          Row(
            children: [
              targettitles(txt: "Target"),
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
          SizedBox(
            height: 2.h,
          ),
          targetrow(txt: "Personal Loan", siz: 4.sp, wei: FontWeight.w400),
          personalloan(),
          SizedBox(
            height: 5.h,
          ),
          Divider(),
          targetrow(txt: "Home Loan", siz: 4.sp, wei: FontWeight.w300),
          Divider(),
          targetrow(txt: "Buissness Loan", siz: 4.sp, wei: FontWeight.w300),
          Divider(),
          targetrow(txt: "vehichle Loan", siz: 4.sp, wei: FontWeight.w300),
          SizedBox(
            height: 2.h,
          ),
          targetrow(txt: "Incentive Loan", siz: 4.sp, wei: FontWeight.bold),
          SizedBox(
            height: 2.h,
          ),
          targetrow(txt: "Personal Loan", siz: 4.sp, wei: FontWeight.w400),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                alltext(
                    txt: "Incentive Per file (IN FLAT)",
                    col: sr,
                    siz: 3.sp,
                    wei: FontWeight.bold,
                    max: 1),
                Spacer(),
                alltext(
                    txt: "₹ 1000",
                    col: bl,
                    siz: 3.sp,
                    wei: FontWeight.bold,
                    max: 1),
              ],
            ),
          ),
          Divider(),
          targetrow(txt: "Home Loan", siz: 4.sp, wei: FontWeight.w300),
          Divider(),
          targetrow(txt: "Buissness Loan", siz: 4.sp, wei: FontWeight.w300),
          Divider(),
          targetrow(txt: "vehichle Loan", siz: 4.sp, wei: FontWeight.w300),
          SizedBox(
            height: 2.h,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                alltext(
                    txt: "Team Members",
                    col: sr,
                    siz: 4.sp,
                    wei: FontWeight.bold,
                    max: 1),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 2.h),
                  child: Container(
                      height: 3.h,
                      width: 4.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5), color: sr),
                      child: Center(
                        child: alltext(
                            txt: "SeeAll",
                            col: wh,
                            siz: 2.sp,
                            wei: FontWeight.bold,
                            max: 1),
                      )),
                )
              ],
            ),
          ),
          SizedBox(height: 3.h,),
          SingleChildScrollView(
            child: Row(
              children: [
          
          SizedBox(width: 5.h,),
            filedetails2(count: 5),
              ],
            ),
          ),

          SizedBox(height: 4.h,),
        ],
      ),
    ),
  );
}
