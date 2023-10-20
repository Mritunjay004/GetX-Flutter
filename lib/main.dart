import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  var count = 0.obs;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Obx Example"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  "Count value is ${count.value}",
                  style: const TextStyle(fontSize: 25),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    count++;
                  },
                  child: const Text("Increment"))
            ],
          ),
        ),
      ),
    );
  }
}
