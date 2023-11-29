import 'package:flutter/material.dart';
import 'package:remote_task/view/utilities/colors.dart';
import 'package:sizer/sizer.dart';

Widget everytextfields({required var hint }) {
  return SizedBox(
    height: 5.h,width: 28.w,
    child: TextFormField(
      decoration: InputDecoration(
          fillColor: gy.withOpacity(0.2),
          hintText:hint ,
        hintStyle: TextStyle(fontSize: 2.sp,color: bl),

          filled: true,
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}
