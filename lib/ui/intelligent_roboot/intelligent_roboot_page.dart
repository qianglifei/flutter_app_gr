
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_gr/base/base_widget.dart';
import 'package:flutter_app_gr/custom_widget/custom_app_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore: must_be_immutable
class IntelligentRobotScreen extends BaseWidget{
  @override
  BaseWidgetState<BaseWidget> getState() {
    // TODO: implement getState
    return IntelligentRobotScreenState();
  }

}

class IntelligentRobotScreenState extends BaseWidgetState<IntelligentRobotScreen> {

  TextEditingController controller = TextEditingController();

  @override
  CustomAppBar getAppBar() {
    // TODO: implement getAppBar
    EdgeInsets padding = MediaQuery.of(context).padding;
    double top = padding.top + 6;
    return CustomAppBar(
        child: Container(
          color: Colors.green,
          margin: EdgeInsets.only(top: top),
          child: Container(
            color: Colors.cyanAccent,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                 IconButton(
                     icon: Image.asset(
                       "images/icon_back_hui.png",
                       width: 10,
                       height: 20,
                       fit: BoxFit.cover,
                     ),
                     onPressed: (){
                        Fluttertoast.showToast(msg: "返回按钮");
                     },
                 ),
                 Expanded(
                   child: Container(
                     alignment: Alignment.center,
                     child: Text("小筑",style: TextStyle(fontSize: 18,color: Colors.black)),
                   ),
                 ),
                 Container(
                   margin: EdgeInsets.only(right: 15),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     mainAxisSize: MainAxisSize.max,
                     children: <Widget>[
                       Image.asset(
                         "images/xiaoxi.png",
                         width: 19,
                         height:19,
                         fit: BoxFit.fill,
                       ),
                       Text("留言",style: TextStyle(fontSize: 12,color: Colors.grey)),
                     ],
                   ),
                 )
              ],
            ),
          ),
        )
    );
  }

  @override
  Widget getContentWidget(BuildContext context) {
    // TODO: implement getContentWidget
    return Scaffold(
        resizeToAvoidBottomPadding: true,
        body: Stack(
          children: <Widget>[
              Container(
                color: Colors.red,
                height: MediaQuery.of(context).size.height,
              ),
              Align(
                alignment: FractionalOffset.bottomCenter,
                child: Container(
                  height: 55,
                  color: Colors.greenAccent,
                  child: Container(
                    margin: EdgeInsets.only(left: 12,right: 12,top:5,bottom: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color: Color.fromRGBO(238, 242, 248, 0.6))
                    ),
                    padding: EdgeInsets.only(bottom: 23,left: 5),
                    child:TextField(
                        controller: controller,
                        autofocus: true,
                        decoration: InputDecoration.collapsed(hintText: "请输入你的问题"),
                        textInputAction: TextInputAction.search,
                      ),
                  ),
                )
              ),
          ],
        ),
    );
  }

  @override
  void onClickErrorWidget() {
    // TODO: implement onClickErrorWidget
  }
}