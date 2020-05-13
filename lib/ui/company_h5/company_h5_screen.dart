import 'package:flutter/material.dart';
import 'package:flutter_app_gr/base/base_widget.dart';
import 'package:flutter_app_gr/custom_widget/custom_app_bar.dart';


class CompanyH5Screen extends BaseWidget{
  final String url;
  CompanyH5Screen(this.url);

  @override
  BaseWidgetState<BaseWidget> getState() {
    // TODO: implement getState
    return CompanyH5ScreenState();
  }

}

class CompanyH5ScreenState extends BaseWidgetState<CompanyH5Screen> {

  @override
  CustomAppBar getAppBar() {
    // TODO: implement getAppBar
    return CustomAppBar(
        child: Text("h5")
    );
  }

  @override
  Widget getContentWidget(BuildContext context) {
    // TODO: implement getContentWidget
    return Container(
      child: Text("")
    );
  }

  @override
  void onClickErrorWidget() {
    // TODO: implement onClickErrorWidget
  }

}