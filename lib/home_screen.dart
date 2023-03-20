import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxstatemgt/counter_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CounterController controller=Get.put(CounterController());

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    print('rebuild');
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX State Management'),
      ),
      body: Center(
        child: Obx(() {
          print('rebuild obx');
          return Text(controller.counter.toString(), style: TextStyle(fontSize: 60),);
        }),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            controller.incrementCounter();

          }),
    );
  }
}


// Rebuild whole screen when you press on floating button
// Boiler plate problem