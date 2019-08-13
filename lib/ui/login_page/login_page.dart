import 'package:flutter/material.dart';
import 'package:flutter_app_gr/base/base_widget.dart';

class LoginPage extends BaseWidget{
  @override
  BaseWidgetState<BaseWidget> getState() {
    // TODO: implement getState
    return LoginPageState();
  }

}

class LoginPageState extends BaseWidgetState<LoginPage> {
  @override
  AppBar getAppBar() {
    // TODO: implement getAppBar
    return null;
  }

  @override
  Widget getContentWidget(BuildContext context) {
    // TODO: implement getContentWidget
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Image.asset("images/bj.png",width: double.infinity,height: 200.0,fit: BoxFit.cover),

          ],
        ),
      ),
    );
  }

  @override
  void onClickErrorWidget() {
    // TODO: implement onClickErrorWidget
  }
}