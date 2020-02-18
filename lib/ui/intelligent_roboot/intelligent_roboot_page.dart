
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_gr/base/base_widget.dart';
import 'package:flutter_app_gr/custom_widget/custom_app_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:math' as math;
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
  ScrollController _scrollController = ScrollController();
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
            color: Colors.lightGreenAccent,
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
                color: Colors.white,
                height: MediaQuery.of(context).size.height,
                child:Row(
                  children: <Widget>[
                   Expanded(
                     child: ListView.builder(
                       controller: _scrollController,
                       itemCount: 100,
                       scrollDirection: Axis.vertical,
                       itemBuilder: (BuildContext context , int index){
                         return Container(
                           alignment: Alignment.centerLeft,
                           width: 100,
                           child: Text("豆豆(*Φ皿Φ*)"),
                         );
                       },
                       shrinkWrap: true,
                     ),
                   ),
                   Container(
                     width: 10,
                     height: MediaQuery.of(context).size.height,
                     color: Colors.lightGreenAccent,
                     child: Text(""),
                   ),
                  ],
                ),
              ),
              Align(
                alignment: FractionalOffset.bottomCenter,
                child: Container(
                  color: Colors.white,
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 12,right: 12,top: 4,bottom: 4 ),
                    decoration: BoxDecoration(
                        color: Colors.lightGreenAccent,
                        border: Border.all(color: Colors.black54,width: 1.0),
                        borderRadius: BorderRadius.circular(5.0)
                    ),
                    child:TextFormField(decoration: InputDecoration.collapsed(hintText: "请输入您的问题")),
                  ),
                ),
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