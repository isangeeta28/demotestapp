import 'package:flavourapp/view/dev_page.dart';
import 'package:flavourapp/view/production_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: GestureDetector(
                onTap: (){
                  Get.to(()=> DevPage());
                },
                child: Container(
                  height: Get.height*0.065,
                  width: Get.width*0.45,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(child: Text('Dev',
                  style: TextStyle(fontWeight: FontWeight.w700,
                  fontSize: 22),)),
                ),
              ),
            ),
            SizedBox(height: Get.height*0.03),
            GestureDetector(
              onTap: (){
                Get.to(()=> ProductionPage());
              },
              child: Container(
                height: Get.height*0.065,
                width: Get.width*0.45,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Center(child: Text('Production',
                  style: TextStyle(fontWeight: FontWeight.w700,
                      fontSize: 22),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
