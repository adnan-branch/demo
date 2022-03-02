

import 'package:demo/Counter.dart';
import 'package:get/get.dart';

class CountController extends GetxController{
  var _counting=0.obs;
  var myCount;

  CountController(){
    var counts = Counter(count: _counting).obs;
    myCount=counts;
  }



  void countUpdate(){
    myCount.update((values) {
      values?.count=++_counting;
    });
  }

}