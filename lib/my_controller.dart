import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0.obs;

  increment() {
    count++;
    // update();
  }

  @override
  void onInit() {
    // called every time count is changed
    // ever(count, (callback) => print('ever'));

    // called the first time count is changed
    // once(count, (callback) => print('once'));

    // called every time count is changed but waits 1 second to trigger
    debounce(count, (callback) => print('debounce'),
        time: Duration(seconds: 4));

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
