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
    double top = padding.top;
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
                height: 50,
                margin: EdgeInsets.only(top: top,bottom: 10,left: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
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
              Container(
                  width:40,
                  height: 50,
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: top,bottom: 10,left: 6),
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
    return Scaffold(
      body: Column(
        children: <Widget>[
          Offstage(
              offstage: false,
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                height: 30,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey,width: 0.2)
                ),
                child: Text("搜索到的结果",style: TextStyle(color: Colors.blue,fontSize: 16)),
              )
          ),
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 200,
                    padding: EdgeInsets.only(top: 6),
                    color: Colors.cyanAccent,
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child:Text("北京-北控",style: TextStyle(fontSize: 18,color: Colors.black)),
                                ),
                                Expanded(
                                    flex: 1,
                                    child: Text("")
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 6),
                                  child:Text("更多",style: TextStyle(fontSize: 18,color: Colors.grey)),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 12,top: 3),
                                  child: Image.asset(
                                    "images/icon_jiantou_you.png",
                                    width: 18,
                                    height: 17,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                            ],
                          ),
                          width: MediaQuery.of(context).size.width,
                          height: 35,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white54,
                            border: Border.all(color: Colors.grey,width: 0.2)
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: ListView.
                            separated(
                                itemBuilder: _buildWidget,
                                controller: new ScrollController(),
                                separatorBuilder: (BuildContext context,int index){
                                  return Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 0.1,
                                    color: Colors.greenAccent,
                                  );
                                },
                                itemCount: 20
                            ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    color: Colors.green,
                  ),
                  Container(
                    height: 300,
                    color: Colors.blue,
                  )
                ],
              )
            )
          ),
        ],
      )
    );

  }

  @override
  void onClickErrorWidget() {
    // TODO: implement onClickErrorWidget
    showLoading();
  }


  Widget _buildWidget(BuildContext context, int index) {
    return Container(
      color: Colors.black,
    );
  }
}