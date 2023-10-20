import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/my_controller.dart';

class HomeView extends StatelessWidget {
  // var myController = Get.put(MyController());

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
            GetX<MyController>(
                init: MyController(),
                builder: (controller) => Text(
                      "${controller.count}",
                      style: const TextStyle(fontSize: 30),
                    )),
            ElevatedButton(
                onPressed: () {
                  // myController.increment();
                  Get.find<MyController>().increment();
                },
                child: const Text('Increment'))
          ],
        )),
      ),
    );
  }
}
