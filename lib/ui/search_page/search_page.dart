import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_gr/base/base_widget.dart';
import 'package:flutter_app_gr/custom_widget/custom_app_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';


class SearchPage extends BaseWidget{
  @override
  BaseWidgetState<BaseWidget> getState() {
    // TODO: implement getState
    return SearchPageState();
  }
}

class SearchPageState extends BaseWidgetState<SearchPage> {

  @override
  CustomAppBar getAppBar() {
    EdgeInsets padding = MediaQuery.of(context).padding;
    double top = padding.top + 6.0;
    // TODO: implement getAppBar
    return CustomAppBar(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width - 60,
                height: 40,
                margin: EdgeInsets.only(top: top,bottom: 10,left: 10),
                decoration: BoxDecoration(
                    color: Colors.white10,
                    border: Border.all(color: Color.fromRGBO(238, 242, 248, 0.6)),
                    borderRadius: BorderRadius.circular(5.0)
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
                    Container(
                      width: MediaQuery.of(context).size.width - 135,
                      margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: TextField(
                         decoration: InputDecoration.collapsed(hintText: "搜索"),
                         autofocus: true,
                      )
                    ),
                    Padding(
                      child:GestureDetector(
                        child: Image.asset(
                          "images/icon_news_search.png",
                          width: 20,
                          height: 20,
                          fit: BoxFit.cover,
                        ),
                        onTap: (){
                          Fluttertoast.showToast(msg: "删除搜索框内容");
                        },
                      ),
                      padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(8, 20, 0, 0),
                child:GestureDetector(
                  child: Text("取消",style: TextStyle(fontSize: 15)),
                  onTap: (){
                    Fluttertoast.showToast(msg: "取消按钮！");
                  },
                )
              ),
            ],
          )

        )
    );
  }

  @override
  Widget getContentWidget(BuildContext context) {
    // TODO: implement getContentWidget
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Offstage(
            offstage: false,
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 30,
              color: Color(0xD6E9F6),
              child: Text("搜索到的结果",style: TextStyle(color: Colors.blue,fontSize: 16)),
            )
          ),
        ]
      ),
    );
  }

  @override
  void onClickErrorWidget() {
    // TODO: implement onClickErrorWidget
    showLoading();
  }

}