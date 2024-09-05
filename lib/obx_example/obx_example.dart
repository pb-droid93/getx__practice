import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ObxExample extends StatelessWidget {
  ObxExample({super.key});

  var count = 0.obs;
  // var count = RxInt(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Obx Examole",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  "$count",
                  style: const TextStyle(fontSize: 25),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    count++;
                  },
                  child: const Text("Increment")),
              ElevatedButton(
                  onPressed: () {
                    if (count > 0) {
                      count--;
                    }
                  },
                  child: const Text("Decrease")),
            ],
          ),
        ),
      ),
    );
  }
}
