import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remote_task/main.dart';
import 'package:remote_task/view/utilities/colors.dart';
import 'package:remote_task/view/widgets/drawer.dart';
import 'package:remote_task/view/widgets/navbar.dart';
import 'package:remote_task/view/widgets/targetdetails.dart';
import 'package:remote_task/view/widgets/topteamleaders.dart';
import 'package:remote_task/view/widgets/totalfiles.dart';
import 'package:remote_task/view/widgets/totalfiles2.dart';

class page2 extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wh,
      body: Row(
        children: [
          drawersweb(),
          SingleChildScrollView(
            child:
             Column(
                children: [
                  navbar(),
                 /// page_cont.datas[page_cont.valuecount.value]
                  
                      //     targetdetails(),
                      
                      //    totalfiles2(),
                         totalfiles(),
                      // topteamleaders(),
                ],
              ),
            ),
          
        ],
      ),
    );
  }
}
