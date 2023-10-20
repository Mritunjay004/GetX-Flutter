import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hello World')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Get.back(
                  result: "Hello World from Next Page",
                );
              },
              child: Container(
                color: Colors.green,
                width: 100,
                height: 100,
                // child: Text(Get.arguments),
              ),
            ),
            Text("navigate")
          ],
        ),
      ),
    );
  }
}
