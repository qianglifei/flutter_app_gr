import 'package:flutter/material.dart';
import 'package:flutter_app_gr/base/base_widget.dart';

class ConsultPage extends BaseWidget{
  @override
  BaseWidgetState<BaseWidget> getState() {
    // TODO: implement getState
    return ConsultPageState();
  }

}

class ConsultPageState extends BaseWidgetState<ConsultPage> {
  @override
  AppBar getAppBar() {
    // TODO: implement getAppBar
    return AppBar(
      title: Text("不显示"),
    );
  }

  @override
  Widget getContentWidget(BuildContext context) {
    // TODO: implement getContentWidget
    return Scaffold(

    );
  }

  @override
  void onClickErrorWidget() {
    // TODO: implement onClickErrorWidget
  }
}