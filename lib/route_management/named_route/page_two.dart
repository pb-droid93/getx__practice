import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Page Two",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed("page3");
                  },
                  child: const Text("Navigate")),
              Text(Get.parameters['a'] ?? "NA"),
              ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: const Text("Back"))
            ],
          ),
        ),
      ),
    );
  }
}
