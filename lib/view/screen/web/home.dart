import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remote_task/view/screen/web/pages/page1.dart';
import 'package:remote_task/view/screen/web/pages/page2.dart';
import 'package:remote_task/view/screen/web/pages/page3.dart';
import 'package:remote_task/view/screen/web/pages/page4.dart';
import 'package:remote_task/view/screen/web/teamheadloginscreen.dart';
import 'package:remote_task/view/screen/web/teamscreen.dart';
import 'package:remote_task/view/utilities/alltext.dart';
import 'package:remote_task/view/utilities/colors.dart';
import 'package:sizer/sizer.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blu.withOpacity(0.3),
      body: Column(
        children: [
          alltext(
              txt: "Pages", col: bl, siz: 5.sp, wei: FontWeight.bold, max: 1),
          SizedBox(
            height: 2.h,
          ),
          Center(
            child: Container(
              height: 80.h,
              width: 50.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.h), color: sr),
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Container(
                          child: ListTile(
                            onTap: () {
                              if (index + 1 == 1) {
                                Get.to(() => page1());
                              }
                              if (index + 1 == 2) {
                                 Get.to(() => page2());
                              }
                              if (index + 1 == 3) {
                                 Get.to(() => page3());
                              }
                              if (index + 1 == 4) {
                                 Get.to(() => page4());
                              }
                              if (index + 1 == 5) {
                                 Get.to(() =>teamHeadscreenlogin());
                              }
                              if (index + 1 == 6) {
                                 Get.to(() => teamscreenlogin());
                              }
                            },
                            title: alltext(
                                txt: "Page${index + 1}",
                                col: bl,
                                siz: 3.sp,
                                wei: FontWeight.bold,
                                max: 1),
                            trailing: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: bl,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 2.h,
                    );
                  },
                  itemCount: 7),
            ),
          )
        ],
      ),
    );
  }
}
