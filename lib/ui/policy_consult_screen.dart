import 'package:flutter/material.dart';
import 'package:flutter_app_gr/base/base_widget.dart';
import 'package:flutter_app_gr/custom_widget/custom_app_bar.dart';


class PolicyConsultScreen extends BaseWidget{
  String id;
  PolicyConsultScreen(String id){
    this.id = id;
  }

  @override
  BaseWidgetState<BaseWidget> getState() {
    // TODO: implement getState
    return PolicyConsultScreenState();
  }

}

class PolicyConsultScreenState extends BaseWidgetState<PolicyConsultScreen> {
  @override
  CustomAppBar getAppBar() {
    // TODO: implement getAppBar
    EdgeInsets padding = MediaQuery.of(context).padding;
    double top = padding.top + 6.0;
    return CustomAppBar(
      child: Container(
        color: Colors.amberAccent,
        width: MediaQuery.of(context).size.width,
        child: Container(
          color: Colors.blue,
          height: 40,
          margin: EdgeInsets.only(left: 0.0,top: top,right: 0.0,bottom: 0.0),
          child: Row(
            children: <Widget>[
              Image.asset(
                "images/icon_back_hui.png",
                width: 20,
                height: 20,
                fit: BoxFit.fill,
              ),
              Expanded(
                child: Text(""),
              ),
              Image.asset(
                "images/kefu.png",
                width: 20,
                height: 20,
                fit: BoxFit.fill,
              ),
              Image.asset(
                "images/genduo.png",
                width: 20,
                height: 20,
                fit: BoxFit.fill,
              ),
            ],
          ),
        )
      ),
    );
  }

  @override
  Widget getContentWidget(BuildContext context) {
    // TODO: implement getContentWidget
    return Container(
      child: Text(""),
    );
  }

  @override
  void onClickErrorWidget() {
    // TODO: implement onClickErrorWidget
  }
}