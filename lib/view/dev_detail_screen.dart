import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DevDettailScreen extends StatelessWidget {
  String? id;
  String? userid;
  String? title;
  String? complete;
  DevDettailScreen({Key? key, this.title, this.id, this.complete, this.userid})
      : super(key: key);

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
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: Get.width*0.4,
                    child: Text("Id",
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500
                      ),),
                  ),

                  Text(id??"",
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500
                    ),),
                ],
              ),
              SizedBox(height: Get.height*0.01,),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: Get.width*0.4,
                    child: Text("User ID",
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500
                      ),),
                  ),

                  Text(userid??"",
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500
                    ),),
                ],
              ),
              SizedBox(height: Get.height*0.01,),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: Get.width*0.4,
                    child: Text("Title",
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500
                      ),),
                  ),

                  Text(title??"",
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500
                    ),),
                ],
              ),
              SizedBox(height: Get.height*0.01,),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: Get.width*0.4,
                    child: Text("Complete",
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500
                      ),),
                  ),

                  Text(complete??"",
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500
                    ),),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
