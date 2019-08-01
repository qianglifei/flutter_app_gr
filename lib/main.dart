import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_gr/ui/app.dart';
import 'package:flutter_app_gr/ui/loading.dart';
import 'package:flutter_app_gr/ui/splash_screen/SplashPage.dart';

import 'base/base_widget.dart';

void main(){
  runApp(MyApp());
  if(Platform.isAndroid){
    ///设置Android状态栏为透明的沉浸，写在组件渲染之后
    ///是为了在渲染后进行set赋值，覆盖状态栏，如果写在渲染之前MaterialApp组件会覆盖掉这个值
    SystemUiOverlayStyle systemUiOverlayStyle =
    SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }

  if(Platform.isIOS){
    ///设置ios 状态栏为透明的沉浸，写在组件渲染之后
    ///是为了在渲染后进行set赋值，覆盖状态栏，
    ///如果写在渲染之前MaterialApp组件会覆盖掉这个值
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      ///Flutter去除右上角Debug标签
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        //（主要的，初级的，基本的）色板
        primarySwatch: Colors.blue,
        //亮度
        brightness: Brightness.light
      ),
      color: Colors.pink,
      home: LoadingPage(),
      routes: <String,WidgetBuilder>{
        "app" : (BuildContext context) => new App(),
        "splash":(BuildContext context){
          return new SplashPage();
        }
      },
    );
  }
}

