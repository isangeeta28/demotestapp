import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../model/home_page_response_model.dart';

class HomeController extends GetxController {
  RxList<HomePageResModel> homepageData = <HomePageResModel>[].obs;

  Future<void> onInit() async {
    super.onInit();
    await gettodosData(refresh: true);
  }

  Future gettodosData({required refresh}) async {
    final response = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/todos"),
    );
    var populardata = jsonDecode(response.body);
    print(populardata);
    homepageData.value = homePageResModelFromJson(response.body);

  }
}