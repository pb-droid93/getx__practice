import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Next Page",
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
              InkWell(
                onTap: () {
                  Get.back(result: "this is from next page");
                },
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.grey,
                  child: Center(
                    child: Text(
                      Get.arguments,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              const Text("Back to first page"),
            ],
          ),
        ),
      ),
    );
  }
}
