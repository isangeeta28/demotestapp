import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../model/production_response_model.dart';
import 'production_detail_screen.dart';

class ProductionPage extends StatefulWidget {
  const ProductionPage({Key? key}) : super(key: key);

  @override
  State<ProductionPage> createState() => _ProductionPageState();
}

class _ProductionPageState extends State<ProductionPage> {
  List _items = [];
  List<RowData> prodata = <RowData>[];

// Fetch content from the json file
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/animation/demo.json');
    final data = await json.decode(response);
    //var prodata = jsonDecode(response);
    //print(populardata);
    var res = ProductionResModel.fromJson(data);
    prodata = res.rows??[];
    print(prodata);
    setState(() {});
  }
  @override
  void initState() {
    // TODO: implement initState
    readJson();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
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
        body: Column(
          children: [
            prodata.isNotEmpty
                ? Expanded(
              child: ListView.builder(
                itemCount: prodata.first.data?.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:  EdgeInsets.only(left: Get.width*0.01, right:Get.width*0.01, top: Get.height*0.01 ),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: SizedBox(
                        height: Get.height*0.12,
                        child: Padding(
                          padding:  EdgeInsets.only(left: Get.width*0.02, right:Get.width*0.015),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: Get.height*0.01,),
                              Padding(
                                padding:  EdgeInsets.only(left: Get.width*0.04),
                                child: SizedBox(
                                    width: Get.width*0.7,
                                    child: Text('${ prodata[index].id}',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 16, fontWeight: FontWeight.w500
                                      ),)),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                //crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: Get.height*0.013,),
                                  SizedBox(
                                      width: Get.width*0.7,
                                      child: Text('${ prodata[index].data??""}',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 16, fontWeight: FontWeight.w500
                                        ),)),
                                  IconButton(
                                      onPressed: (){
                                        Get.to(()=> ProductionScreen(
                                          data : prodata[index].data
                                        ));
                                      },
                                      icon: Icon(Icons.arrow_forward_ios))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
                : Container()
          ],
        ),
      ),
    );
  }
}
