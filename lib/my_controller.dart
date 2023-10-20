import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0;

  increment() {
    count++;
    update();
  }

  @override
  void onInit() {
    print("onInit");
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onClose() {
    print("onClose");
    // TODO: implement onClose
    super.onClose();
  }
}
