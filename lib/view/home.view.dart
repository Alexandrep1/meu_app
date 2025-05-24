import 'package:flutter/material.dart';
import 'package:meu_app/app/controller/home.controller.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  HomeController controller = Get.put(HomeController());
  HomeView({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "you have pushed the button this many times:",
            ),
            Obx(
              () => Text(
              controller.count.toString(),
              style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addCounter,
        tooltip: "increment",
        child: const Icon(Icons.add),
      ),
    );
  }
  void addCounter() {
    controller.count.value++;
  }
}