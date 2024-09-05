import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_practice/route_management/next_page.dart';

class FirstPAge extends StatelessWidget {
  const FirstPAge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "First Page",
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
                onTap: () async {
                  // fro closing last screen
                  // Get.off() Get.offAll()
                  var a = await Get.to(() => const NextPage(),
                      arguments: "this is from main page", //for passing data
                      duration: const Duration(milliseconds: 300),
                      transition: Transition.zoom);

                  if (kDebugMode) {
                    print(a.toString());
                  }
                },
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.red,
                ),
              ),
              const Text("Navigate to next Page"),
            ],
          ),
        ),
      ),
    );
  }
}
