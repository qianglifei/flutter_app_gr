import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app.dart';

class LoadingPage extends StatefulWidget{
  _LoadingPageState createState() => new _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //在加载页面停顿三秒
    new Future.delayed(Duration(seconds: 3),(){
      _getHasSkip();
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Stack(
        children: <Widget>[
          Image.asset(
            "images/loading.png",
            fit: BoxFit.fitHeight,
            //无限大
            width: double.infinity,
            height: double.infinity,
          )
        ],
      ),
    );
  }

  void _getHasSkip() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool hasSkip = prefs.getBool("hasSkip");
    if(hasSkip == null || !hasSkip){
      ///pushReplacementNamed：当用户成功登录并且现在在 HomeScreen 上时，
      ///您不希望用户还能够返回到 LoginScreen。因此，登录应完全由首页替换。
      ///另一个例子是从 SplashScreen 转到 HomeScreen。 它应该只显示一次，
      ///用户不能再从 HomeScreen 返回它。 在这种情况下，由于我们要进入一个
      ///全新的屏幕，我们可能需要借助此方法。
      Navigator.of(context).pushReplacementNamed("splash");
    }else{
      ///用户已经登陆进入 HomeScreen ，然后经过一系列操作回到配合只界面想要退出登录，
      ///你不能够直接 Push 进入 LoginScreen 吧？你需要将之前路由中的实例全部删除是的用户不会在回到先前的路由中。
      Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (context){
        return App();
      }),(route) => route == null);
    }
  }
}
