import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remote_task/view/widgets/targetdetails.dart';
import 'package:remote_task/view/widgets/topteamleaders.dart';
import 'package:remote_task/view/widgets/totalfiles.dart';
import 'package:remote_task/view/widgets/totalfiles2.dart';

class PageControllerss extends GetxController {
  List datas =[
          
              targetdetails(),
          
             totalfiles2(),
               totalfiles(),
          topteamleaders(),



  ];


  var valuecount = 0.obs;

  change ({required var index}){
    valuecount.value = index;



  }
}
