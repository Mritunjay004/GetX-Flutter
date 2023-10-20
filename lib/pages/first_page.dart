import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.toNamed("/second");
                },
                child: Text("navigate to second")),
          ],
        ),
      ),
    );
  }
}
