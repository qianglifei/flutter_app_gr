import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_gr/base/base_widget.dart';
import 'package:flutter_app_gr/custom_widget/custom_app_bar.dart';
import 'package:flutter_app_gr/http/common_service.dart';
import 'package:flutter_app_gr/ui/first_page/banner_second.dart';
import 'package:flutter_app_gr/ui/search_page/search_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'banner.dart';
import 'package:flutter_app_gr/entity/notice_data_entity.dart';
import 'key_service_enterprises_widget.dart';
import 'marquees.dart';
import 'dart:math' as math;
import 'package:barcode_scan/barcode_scan.dart';
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
          color: Color.fromARGB(1, 288, 242, 248)
        ),
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        BannerWidget(),
                        _chooseTab(),
                      ],
                    ),
                    MarqueeContinuousWidget(stepOffset: 60),
                    BannerSecond(),
                    KeyServiceEnterPrisesWidget(),
                    Container(
                      height: 80,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      color: Colors.white,
                      child: null,
                    )
                  ],
                )
            ),
            _titleBar(),
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
        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(9)),
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
    EdgeInsets padding = MediaQuery.of(context).padding;
    double top = math.max(padding.top, EdgeInsets.zero.top);
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.fromLTRB(0, top, 0, 0),
      height: 110,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            "images/kefubai.png",
            height: 33,
            width: 31,
            fit: BoxFit.cover,
          ),
          GestureDetector(
              behavior: HitTestBehavior.deferToChild,
              child: Container(
                  width: MediaQuery.of(context).size.width - 100,
                  height: 35,
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Color.fromRGBO(255, 255, 255, 0.6)
                        ),
                      ),
                      Positioned(
                          left: 8,
                          child: Image.asset(
                            "images/sousuo.png",
                            height: 25,
                            width: 25,
                            fit: BoxFit.cover,
                          )
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
                              scan();
                              Fluttertoast.showToast(msg: "扫一扫");
                            },
                          )
                      ),

                    ],
                  )
              ),
              onTap: (){
                Fluttertoast.showToast(msg: "搜索");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context){
                        return  SearchPage();
                      }
                  )
                );
              },
          ),
          Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                child:Image.asset(
                  "images/xiaoxi.png",
                  height: 30,
                  width: 30,
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

  Future scan() async {
    try {
      String barcode = await BarcodeScanner.scan();
      print('扫码结果：' + barcode);
    } catch (e) {
      if (e.code == BarcodeScanner.CameraAccessDenied) {
        print('未授予APP相机权限');
      } else {
        print('扫码错误：$e');
      }
    }
  }

}

//Future scan() async{
//    try {
//      String barcode = await BarcodeScanner.scan();
//      print('扫码结果：' + barcode);
//    } on PlatformException catch (e) {
//      if (e.code == BarcodeScanner.CameraAccessDenied) {
//        print('未授予APP相机权限');
//      } else {
//        print('扫码错误：$e');
//      }
//    } on FormatException {
//      print('进入扫码页面后未扫码就返回');
//    } catch (e) {
//      print('扫码错误：$e');
//    }
//}
