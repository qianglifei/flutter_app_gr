import 'package:flutter/material.dart';
import 'package:flutter_app_gr/base/base_widget.dart';
import 'package:flutter_app_gr/custom_widget/custom_app_bar.dart';

class ConsultPage extends BaseWidget{
  @override
  BaseWidgetState<BaseWidget> getState() {
    // TODO: implement getState
    return ConsultPageState();
  }

}

class ConsultPageState extends BaseWidgetState<ConsultPage> {
  @override
  CustomAppBar getAppBar() {
    // TODO: implement getAppBar
    return CustomAppBar(
      child: Container(
        color: Colors.blue,
        child: Row(
          children: <Widget>[
             Container(
               color: Colors.transparent,
               child: Column(
                 children: <Widget>[
                   Padding(
                     padding:EdgeInsets.fromLTRB(15, 30, 0,0),
                     child:Image.asset(
                       "images/kefu.png",
                       height: 23,
                       width: 21,
                       fit: BoxFit.cover,
                     ),
                   ),
                   Padding(
                     padding: EdgeInsets.fromLTRB(13, 0, 0, 2),
                     child: Text("小筑",style: TextStyle(color: Colors.grey)),
                   )
                 ],
               )
             ),
             Container(
               margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
               width: 300,
               height: 40,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.all(Radius.circular(3)),
                 color: Color.fromRGBO(238, 242, 248, 0.6),
               ),
               child: Row(
                 children: <Widget>[
                   Padding(
                     child:Image.asset(
                       "images/search_news.png",
                       width: 20,
                       height: 20,
                       fit: BoxFit.cover,
                     ),
                     padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                   ),
                   Padding(
                     padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                     child: Text("搜索关键词、关键字",style: TextStyle(color: Colors.grey)),
                   )
                 ],
               ),
             ),
            Container(
                color: Colors.transparent,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding:EdgeInsets.fromLTRB(15, 30, 0,0),
                      child:Image.asset(
                        "images/b_xinfeng.png",
                        height: 23,
                        width: 21,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(13, 0, 0, 2),
                      child: Text("消息",style: TextStyle(color: Colors.grey)),
                    )
                  ],
                )
            ),
          ],
        ),
      ),
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