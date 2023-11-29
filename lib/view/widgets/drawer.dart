import 'package:flutter/material.dart';
import 'package:remote_task/main.dart';
import 'package:remote_task/view/utilities/alltext.dart';
import 'package:remote_task/view/utilities/colors.dart';
import 'package:sizer/sizer.dart';

List datas = ["Dashboard", "Team", "Addd Team", "Leads", "Help", "Settings"];
List<IconData> icos = [
  Icons.dashboard_sharp,
  Icons.group,
  Icons.person_add_alt,
  Icons.flag,
  Icons.help_center,
  Icons.settings
];

Widget drawersweb() {
  return Container(
    height: 100.h,
    width: 15.w,
    color: wh,
    child: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 10.h,
            width: 20.w,
            color: wh,
            child: const Image(
              image: AssetImage(
                "images/Screenshot 2023-11-29 at 17-47-01 8 1 .pdf.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Container(
            height: 60.h,
            width: 20.w,
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      page_cont.change(index: index);

                      print(index.toString());
                    },
                    hoverColor: gy,
                    selected: true,
                    selectedColor: gy,
                    leading: Container(
                      height: 3.h,
                      width: 2.w,
                      child: Icon(
                        icos[index],
                        size: 2.h,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1.h),
                          color: gy.withOpacity(0.2)),
                    ),
                    title: alltext(
                        txt: datas[index],
                        col: bl,
                        siz: 2.sp,
                        wei: FontWeight.bold,
                        max: 1),
                  );
                },
                separatorBuilder: (context, index) {
                  return index == 3
                      ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Divider(
                            color: gy,
                          ),
                        )
                      : SizedBox(
                          height: 1.h,
                        );
                },
                itemCount: 6),
          ),
          SizedBox(
            height: 14.h,
          ),
          foundbugsection(),
        ],
      ),
    ),
  );
}

Widget foundbugsection() {
  return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 14.h,
        width: 10.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(1.h),
          color: gy.withOpacity(0.3),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 1.h,
            ),
            alltext(
                txt: "Found a bug?",
                col: sr,
                siz: 3.sp,
                wei: FontWeight.bold,
                max: 1),
            alltext(
                txt: "Report us if you \nfind any bug",
                col: sr,
                siz: 2.sp,
                wei: FontWeight.w400,
                max: 2),
            SizedBox(
              height: 1.h,
            ),
            Container(
              height: 3.h,
              width: 8.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1.h),
                color: sr,
              ),
              child: Center(
                child: alltext(
                    txt: "Report",
                    col: wh,
                    siz: 2.sp,
                    wei: FontWeight.bold,
                    max: 1),
              ),
            ),
          ],
        ),
      ));
}
