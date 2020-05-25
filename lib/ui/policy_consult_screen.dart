import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_gr/base/base_widget.dart';
import 'package:flutter_app_gr/custom_widget/custom_app_bar.dart';
import 'package:flutter_app_gr/entity/second_banner_entity.dart';
import 'package:flutter_app_gr/http/common_service.dart';
import 'package:webview_flutter/webview_flutter.dart';


class PolicyConsultScreen extends BaseWidget{
  String zx_id;
  PolicyConsultScreen(String zx_id){
    this.zx_id = zx_id;
  }

  @override
  BaseWidgetState<BaseWidget> getState() {
    // TODO: implement getState
    return PolicyConsultScreenState();
  }

}

class PolicyConsultScreenState extends BaseWidgetState<PolicyConsultScreen> {
  String _newsTitle = "";
  String _newsCreateTime = "";
  String _newsCommentCount = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getDataContent();
  }
  @override
  CustomAppBar getAppBar() {
    // TODO: implement getAppBar
    EdgeInsets padding = MediaQuery.of(context).padding;
    double top = padding.top + 6.0;
    return CustomAppBar(
      child: Container(
        color: Colors.amberAccent,
        padding: EdgeInsets.only(left: 0.0,top: top,right: 0.0,bottom: 0.0),
        width: MediaQuery.of(context).size.width,
        height: 80,
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Image.asset(
                  "images/icon_back_hui.png",
                  width: 20,
                  height: 20,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Text(""),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Image.asset(
                  "images/kefu.png",
                  width: 20,
                  height: 20,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0,right: 10.0),
                child: Image.asset(
                  "images/genduo.png",
                  width: 20,
                  height: 20,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
      ),
    );
  }

  @override
  Widget getContentWidget(BuildContext context) {
    // TODO: implement getContentWidget
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 17,top: 10),
            child: Text("新闻标题"),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 17,top:50),
                child: Text("2020-05-25"),
              ),
              Expanded(
                child: Text(""),
              ),
              Padding(
                padding: EdgeInsets.only(left: 17,top:50,right: 17),
                child: Text("20人浏览"),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 300,
            child: WebView(
              initialUrl: "https://www.baidu.com",
              //这里支持JS
              javascriptMode: JavascriptMode.unrestricted,
            ),
          )
        ],
      ),
    );
  }

  @override
  void onClickErrorWidget() {
    // TODO: implement onClickErrorWidget
  }

  /// 新闻咨询详情
  Future<Null> _getDataContent() async{
    CommonService().getBannerNewsDetails((SecondBannerEntity ss){

    },widget.zx_id);
  }
}