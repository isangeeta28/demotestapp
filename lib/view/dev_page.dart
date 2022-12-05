import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home_page_controller.dart';
import 'dev_detail_screen.dart';

class DevPage extends StatelessWidget {
  const DevPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Data",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900, fontSize: 25),),
          leading: IconButton(
            onPressed: (){
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
          ),
        ),
        body: GetX<HomeController>(
          init: Get.put(HomeController()),
          builder: (homeController){
            return homeController.homepageData.isEmpty
                ? const Center(child: CircularProgressIndicator())
                : Column(
              children: [
                Expanded(
                  //height: Get.height*0.7,
                  child: ListView.builder(
                    shrinkWrap: true,
                    //physics: NeverScrollableScrollPhysics(),
                      itemCount: homeController.homepageData.length,
                      itemBuilder: (BuildContext context, int index){
                        return Padding(
                          padding:  EdgeInsets.only(left: Get.width*0.01, right:Get.width*0.01, top: Get.height*0.01 ),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: SizedBox(
                              height: Get.height*0.07,
                              child: Padding(
                                padding:  EdgeInsets.only(left: Get.width*0.02, right:Get.width*0.015),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  //crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: Get.height*0.013,),
                                    SizedBox(
                                      width: Get.width*0.7,
                                        child: Text('${ homeController.homepageData[index].title}',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 16, fontWeight: FontWeight.w500
                                        ),)),
                                    IconButton(
                                        onPressed: (){
                                          Get.to(()=>DevDettailScreen(
                                            id: homeController.homepageData[index].id.toString(),
                                            title: homeController.homepageData[index].title,
                                            complete: homeController.homepageData[index].completed.toString(),
                                            userid: homeController.homepageData[index].userId.toString(),
                                          ));
                                        },
                                        icon: Icon(Icons.arrow_forward_ios))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      }
                  ),
                )
              ],
            );
          }
        ),
      ),
    );
  }
}
