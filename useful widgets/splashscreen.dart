import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kstu/controllers/mastercontroller.dart';
import 'suplus/master.dart';

class SplashScreen extends StatelessWidget {
  MasterController con = Get.put(MasterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            Container(
              alignment: Alignment.center,
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage('assets/images/myapp_logo.jpg')),
                  boxShadow: []),
            ),
            Column(
              children: [
                SpinKitRipple(
                  color: Colors.deepPurple,
                  size: 100,
                  borderWidth: 10,
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
