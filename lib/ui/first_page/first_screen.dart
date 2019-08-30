import 'package:flutter/material.dart';
import 'package:flutter_app_gr/base/base_widget.dart';
import 'package:flutter_app_gr/custom_widget/custom_app_bar.dart';
import 'package:flutter_app_gr/http/common_service.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'banner.dart';
import 'package:flutter_app_gr/entity/notice_data_entity.dart';

import 'key_service_enterprises_widget.dart';
import 'marquee.dart';
class FirstPage extends BaseWidget{
  @override
  BaseWidgetState<BaseWidget> getState() {
    // TODO: implement getState
    return FirstPageState();
  }

}

class FirstPageState extends BaseWidgetState<FirstPage> {

  @override
  CustomAppBar getAppBar() {
    // TODO: implement getAppBar
    return CustomAppBar(
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
          color: Color.fromARGB(1, 288, 242, 248)
        ),
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  BannerWidget(),
                  _titleBar(),
                  _chooseTab(),
                ],
              ),
              MarqueeContinuousWidget(),
              KeyServiceEnterPrisesWidget(),
              Container(
                height: 80  ,
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                color: Colors.white,
                child: null,
              )
            ],
          )
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
              Padding(
                padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Text(name,style: TextStyle()),
              )
            ],
          ),
        ),
        onTap: (){
          //TODO
          Fluttertoast.showToast(msg: "点击事件");
        },
    );
  }

  Widget _chooseTab() {
    return Container(
      height: 180,
      margin: EdgeInsets.fromLTRB(0,210,0,0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(9),topRight: Radius.circular(9)),
        color: Colors.white
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: new EdgeInsets.fromLTRB(0, 9, 0, 9),
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
      ),
    );
  }

  Widget _titleBar() {
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.fromLTRB(15, 49, 0, 15),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(
            "images/kefubai.png",
            height: 23,
            width: 21,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
              behavior: HitTestBehavior.deferToChild,
              child: Container(
                  width: ScreenUtil().setWidth(800),
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: <Widget>[
                      Opacity(
                        opacity: 0.75,
                        child:Image.asset(
                          "images/yuanjiaojuxing1.png",
                          fit: BoxFit.cover,
                          height: 30,
                          width: ScreenUtil().setWidth(800),
                        ),
                      ),
                      Positioned(
                        left: 40,
                        child: Text("搜索关键词，关键字",style: TextStyle(color: Colors.white,fontSize: 18)),
                      ),
                      Positioned(
                          right: 15,
                          child: GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            child: Image.asset(
                              "images/saoyisao.png",
                              height: 20,
                              width: 20,
                              fit: BoxFit.cover,
                            ),
                            onTap: (){
                              Fluttertoast.showToast(msg: "扫一扫");
                            },
                          )
                      ),
                      Positioned(
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
              onTap: (){
                Fluttertoast.showToast(msg: "搜索");
              },
            ),

          ),
          Container(
              margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
              child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                child:Image.asset(
                  "images/xiaoxi.png",
                  height: 25,
                  width: 25,
                  fit: BoxFit.cover,
                ),
                onTap: (){
                  Fluttertoast.showToast(msg: "消息");
                },
              )
          )
        ],
      ),
    );
  }


}