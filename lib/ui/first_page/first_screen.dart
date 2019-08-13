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
    return null;
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
          color: Colors.pinkAccent
        ),
        width: MediaQuery
            .of(context)
            .size
            .width,
        child: Column(
          children: <Widget>[
            BannerWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _createPicTextButton("images/rczc.png","人才政策"),
                _createPicTextButton("images/rcgy.png","人才公寓"),
                _createPicTextButton("images/zmyz.png","人才绿卡"),
                _createPicTextButton("images/rczc.png","筑梦驿站"),
                _createPicTextButton("images/zjfw.png","专家服务"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _createPicTextButton("images/zgz.png","找工作"),
                _createPicTextButton("images/xlrz.png","学历认证"),
                _createPicTextButton("images/dafw.png","档案服务"),
                _createPicTextButton("images/xxpx.png","学习培训"),
                _createPicTextButton("images/gd.png","更多"),
              ],
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
              Text(name)
            ],
          ),
        )
    );
  }

}