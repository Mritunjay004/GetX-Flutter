import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/my_controller.dart';

class HomeView extends StatelessWidget {
  // var myController = Get.put(MyController());

  //for creating multiple instances of MyController
  // var a = Get.put(MyController(), tag: 'abc');
  // var b = Get.put(MyController(), tag: 'def');

  //it won't be destroyed at any time
  // var a = Get.put(MyController(), permanent: true);

  // the below won't creates a new instance of MyController unless we use this instance
  //fenix: true for lazyPut
  // var b = Get.lazyPut(() => MyController());

  //creates a new instance every time
  // var c = Get.create(() => MyController());

  // var c = Get.putAsync(() async => MyController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Obx Example')),
        body: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Hello",
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
                onPressed: () {
                  var abc = Get.find<MyController>(tag: 'abc');
                  var def = Get.find<MyController>(tag: 'def');
                  print(abc.hashCode);
                  print(def.hashCode);
                },
                child: const Text('Increment'))
          ],
        )),
      ),
    );
  }
}
