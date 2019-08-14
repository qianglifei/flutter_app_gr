import 'package:flutter/material.dart';
import 'package:flutter_app_gr/base/base_widget.dart';

import 'banner.dart';

class FirstPage extends BaseWidget{
  @override
  BaseWidgetState<BaseWidget> getState() {
    // TODO: implement getState
    return FirstPageState();
  }

}

class FirstPageState extends BaseWidgetState<FirstPage> {
  @override
  AppBar getAppBar() {
    // TODO: implement getAppBar
    return AppBar(
      title: Text("无标题"),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget getContentWidget(BuildContext context) {
    // TODO: implement getContentWidget
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white
        ),
        width: MediaQuery
            .of(context)
            .size
            .width,
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                BannerWidget(),
                Container(
                  color: Colors.transparent,
                  padding: EdgeInsets.fromLTRB(10, 40, 0, 0),
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                          "images/kefubai.png",
                          height: 35,
                          width: 35,
                          fit: BoxFit.cover,
                      ),
                      Container(
                        width: 300,
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: Stack(
                          alignment: AlignmentDirectional.center,
                          children: <Widget>[
                            Opacity(
                              opacity: 0.75,
                              child:Image.asset(
                                "images/yuanjiaojuxing1.png",
                                fit: BoxFit.fill,
                                height: 40,
                                width: 300,
                              ),
                            ),
                            Positioned(
                                left: 40,
                                top: 5,
                                child: Text("搜索关键词，关键字",style: TextStyle(color: Colors.white,fontSize: 18)),
                            ),
                            Positioned(
                              right: 15,
                              top: 7,
                              child: Image.asset(
                                "images/saoyisao.png",
                                height: 25,
                                width: 25,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                                top: 7,
                                left: 12,
                                child: Image.asset(
                                  "images/sousuo.png",
                                  height: 25,
                                  width: 25,
                                  fit: BoxFit.cover,
                                )
                            )
                          ],
                        )
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: Image.asset(
                          "images/xiaoxi.png",
                          height: 35,
                          width: 35,
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
                padding: new EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    _createPicTextButton("images/rczc.png","人才政策"),
                    _createPicTextButton("images/rcgy.png","人才公寓"),
                    _createPicTextButton("images/zmyz.png","人才绿卡"),
                    _createPicTextButton("images/rczc.png","筑梦驿站"),
                    _createPicTextButton("images/zjfw.png","专家服务"),
                  ],
                ),
            ),
            Padding(
                padding: new EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    _createPicTextButton("images/zgz.png","找工作"),
                    _createPicTextButton("images/xlrz.png","学历认证"),
                    _createPicTextButton("images/dafw.png","档案服务"),
                    _createPicTextButton("images/xxpx.png","学习培训"),
                    _createPicTextButton("images/gd.png","更多"),
                  ],
                ),
            ),

          ],
        )
      ),
    );
  }

  @override
  void onClickErrorWidget() {
    // TODO: implement onClickErrorWidget
  }

  Widget _createPicTextButton(String imgPath,String name) {
    return InkWell(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset(
                imgPath,
                width: 40,
                height: 40,
                fit: BoxFit.fill,
              ),
              Text(name,style: TextStyle())
            ],
          ),
        ),
        onTap: (){
          //TODO 点击事件
        },
    );
  }

}