import 'package:flutter/material.dart';
import 'package:flutter_app_gr/base/base_widget.dart';
import 'package:flutter_app_gr/custom_widget/custom_app_bar.dart';


class CompanyPage extends BaseWidget{
  @override
  BaseWidgetState<BaseWidget> getState() {
    // TODO: implement getState
    return CompanyPageState();
  }
}

class CompanyPageState extends BaseWidgetState<CompanyPage> {
  @override
  CustomAppBar getAppBar() {
    // TODO: implement getAppBar
    return CustomAppBar(
        child: Text("公司详情标题")
    );
  }

  @override
  Widget getContentWidget(BuildContext context) {
    // TODO: implement getContentWidget
    return Text("公司详情");
  }

  @override
  void onClickErrorWidget() {
    // TODO: implement onClickErrorWidget
  }
}