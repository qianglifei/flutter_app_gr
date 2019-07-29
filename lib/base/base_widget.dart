import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class BaseWidget extends StatefulWidget{
  BaseWidgetState baseWidgetState;
  @override
  BaseWidgetState createState() {
    // TODO: implement createState
    baseWidgetState = getState();
    return baseWidgetState;
  }

  BaseWidgetState getState();
}

abstract class BaseWidgetState <T extends BaseWidget> extends State<T>{
  //导航栏是否显示
  bool _isAppBarShow = true;
  //错误信息是否显示
  bool _isErrorWidgetShow = false;
  String _errorContentMessage = "网络请求失败，请检查网络";
  String _errImgPath = "images/ic_error.png";
  //内容控件显示
  bool _isLoadingWidgetShow = false;
  bool _isEmptyWidgetShow = false;
  String _emptyWidgetContent = "暂无数据";
  //自己根据需求变更
  String _emptyImgPath = "images/ic_empty.png";
  //错误页面和空页面的字体加粗
  FontWeight _fontWeight = FontWeight.w600;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: _getBaseAppBar(),
      body: Container(
        //背景颜色，自己可以更具需求变更
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            getContentWidget(context),
            _getBaseErrorWidget(),
            _getBaseEmptyWidget(),
            _getBaseLoadingWidget()
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _getBaseAppBar() {
    //如果AppBar设置高度，在AppBar外包一层PreferredSize，设置PreferredSize的属性为想要的高度即可
    return PreferredSize(
      //控制child是否显示
      /**
       * 当offstage 为true时，控件隐藏，为false是，控件显示
       * offstage 为不可见时，如果child有动画，需要手动把动画停掉
       */
        child: Offstage(
          offstage: !_isAppBarShow,
          child: getAppBar(),
        ),
        preferredSize: Size.fromHeight(50)
    );
  }
  ///加载内容控件
  Widget getContentWidget(BuildContext context);

  _getBaseErrorWidget() {
    return Offstage(
      offstage: !_isErrorWidgetShow,
      child: getErrorWidget(),
    );
  }
  ///暴漏错误页面的方法，可以自己重新定制
  Widget getErrorWidget() {
    return Container(
      //错误页面中心可以自己调整
      padding: EdgeInsets.fromLTRB(0, 0, 0, 80),
      color: Colors.white,
      //infinity 无穷大
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
                image: AssetImage(_errImgPath),
                width: 120,
                height: 120,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Text(
                _errorContentMessage,
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: _fontWeight
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: OutlineButton(
                  onPressed: (){
                    onClickErrorWidget();
                  }
              ),
            )
          ],
        ),
      ),
    );
  }
  ///点击错误页面后展示的内容
  void onClickErrorWidget();
  ///设置错误的提示信息
  void setErrorContent(String content){
    if(content != null){
      setState(() {
        _errorContentMessage = content;
      });
    }
  }
  ///设置导航栏的显示或者隐藏
  void setAppBarVisible(bool isVisible){
    setState(() {
      _isAppBarShow = isVisible;
    });
  }
  ///显示内容
  void showContent(){
    setState(() {
      _isEmptyWidgetShow = false;
      _isLoadingWidgetShow = false;
      _isErrorWidgetShow = false;
    });
  }
  ///加载
  void showLoading(){
    setState(() {
      _isErrorWidgetShow = false;
      _isEmptyWidgetShow = false;
      _isLoadingWidgetShow = true;
    });
  }
  ///显示空页面
  void showEmpty(){
    setState(() {
      _isLoadingWidgetShow = false;
      _isEmptyWidgetShow = true;
      _isErrorWidgetShow = false;
    });
  }
  ///显示错误页面
  void showError(){
    setState(() {
      _isLoadingWidgetShow = false;
      _isEmptyWidgetShow = false;
      _isErrorWidgetShow = true;
    });
  }
  ///设置空页面内容和图片
  void setEmptyWidgetContent({String content,String imagePath}){
    if(content != null){
      setState(() {
        _emptyWidgetContent = content;
      });
    }

    if(imagePath != null){
      setState(() {
        _emptyImgPath = imagePath;
      });
    }
  }
  /// 设置错误页面图片
  void setErrorWidgetContent(String imagePath){
    if(imagePath != null){
      setState(() {
        _errImgPath = imagePath;
      });
    }
  }
  _getBaseEmptyWidget() {
    return Offstage(
      offstage: !_isEmptyWidgetShow,
      child: getEmptyWidget(),
    );
  }
  ///获取空的页面，内容可以自己定制
  Widget getEmptyWidget() {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 100),
      color: Colors.white,
      //无限大
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                color: Colors.black12,
                image: AssetImage(_emptyImgPath),
                width: 150,
                height: 150,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text(
                  _emptyWidgetContent,
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: _fontWeight
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _getBaseLoadingWidget() {
    return Offstage(
      offstage: !_isLoadingWidgetShow,
      child: getLoadingWidget(),
    );
  }
  ///正在加载页面
  Widget getLoadingWidget() {
    return Center(
      child: CupertinoActivityIndicator(
        radius: 15.0, //值越大加载的图形越大
      ),
    );
  }
  //导航栏

  AppBar getAppBar();


}