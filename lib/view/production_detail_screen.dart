import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductionScreen extends StatelessWidget {
  List? data = [];
   ProductionScreen({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Detail",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900, fontSize: 25),),
          leading: IconButton(
            onPressed: (){
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
          ),
        ),
        body: Padding(
          padding:  EdgeInsets.only(left: Get.width*0.039, right: Get.width*0.015, top: Get.height*0.03),
          child: Column(
            children: [
              Container(
                height: Get.height*0.8,
                child: ListView.builder(
                  itemCount: data?.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:  EdgeInsets.only(left: Get.width*0.01, right:Get.width*0.01,),
                      child: Padding(
                        padding:  EdgeInsets.only( right:Get.width*0.015),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: Get.height*0.01,),
                            Padding(
                              padding:  EdgeInsets.only(left: Get.width*0.01),
                              child: Text('${ data?[index]}',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500
                                ),),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
