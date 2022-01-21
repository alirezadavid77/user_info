import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_infos/dummy.dart';
import 'package:user_infos/view-model/home_controller.dart';
import 'package:user_infos/view/detial.dart';
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();


    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Obx(()=>Text(
        '${homeController.count}',
        style: Theme.of(context).textTheme.headline4,
      ),),
            FlatButton(onPressed: (){

              homeController.increment();
              // print(apiService.getText());
              // Get.to(DetailPage());
            }, child: Text(''
                '+'),
            color: Colors.black,
              textColor: Colors.white,
            ),
            FlatButton(onPressed: (){

              homeController.decrement();
              // print(apiService.getText());
              // Get.to(DetailPage());
            }, child: Text(''
                '-'),
              color: Colors.black,
              textColor: Colors.white,
            ),
            FlatButton(onPressed: (){

              // homeController.decrement();
              // print(apiService.getText());
              Get.to(DetailPage());
            }, child: Text(''
                'go to detail'),
              color: Colors.black,
              textColor: Colors.white,
            )
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
