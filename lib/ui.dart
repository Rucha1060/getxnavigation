import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controller.dart';

class MyHomePage extends StatelessWidget {
  final String title;  final MyHomePageController controller = Get.put(MyHomePageController());
  final MyHomePageController Controller = Get.put(MyHomePageController());
  MyHomePage({ required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("getxnavigation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have Incremented counter value to :',
            ),
           Obx(() => Text('${controller.count.value}', style: Theme.of(context).textTheme.headline4,),),
           RaisedButton(onPressed: (){},
           child:Text("next page"))
          ],
        ),
      ),
   
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      
    );
  }
}