import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_gr/base/base_widget.dart';
import 'package:flutter_app_gr/custom_widget/custom_app_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MinePage extends BaseWidget {

  @override
  BaseWidgetState<BaseWidget> getState() {
    // TODO: implement getState
    return MinePageState();
  }

}

class MinePageState extends BaseWidgetState<MinePage> {
  double _top;
  @override
  CustomAppBar getAppBar() {
    // TODO: implement getAppBar
    EdgeInsets padding = MediaQuery.of(context).padding;
    _top = padding.top + 20;
    return null;
  }

  @override
  Widget getContentWidget(BuildContext context) {
    // TODO: implement getContentWidget
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 176,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/wd_bg.png"),
                //TODO 什么意思
                centerSlice: new Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
              ),
            ),
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: _top,
                  right: 15,
                  child: InkWell(
                    onTap: (){
                      Fluttertoast.showToast(msg: "设置被点击");
                    },
                    child: Container(
                      width: 20,
                      height: 20,
                      child: Image.asset("images/setting.png"),
                    ),
                  )
                ),
                Positioned(
                    top: _top + 20.0,
                    left: 15,
                    child: InkWell(
                      onTap: (){
                          Fluttertoast.showToast(msg: "修改头像被点击");
                      },
                      child: Container(
                        width: 67,
                        height: 67,
                        child: Image.asset("images/admin.png"),
                      ),
                    )
                ),
                Positioned(
                    top: _top + 20.0,
                    left: 92,
                    child: Row(
                      children: <Widget>[
                        Text("张珊珊",style: TextStyle(fontSize: 18, color: Colors.white)),
                        Padding(
                          padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                          child: InkWell(
                            onTap: (){
                              Fluttertoast.showToast(msg: "修改被点击");
                            },
                            child: Container(
                              width: 19,
                              height: 19,
                              child: Image.asset("images/xiugai.png"),
                            ),
                          )
                        )
                      ],
                    )
                ),
                Positioned(
                    top: _top + 60.0,
                    left: 92,
                    child: Text("18612937836",style: TextStyle(fontSize: 15, color: Colors.white))
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _createPicTextButton("images/b_jianli.png","简历"),
                _createPicTextButton("images/b_toudijilu.png","投递记录"),
                _createPicTextButton("images/b_guanzhuhe.png","关注盒动态")
              ],
            ),
          ),
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _createPicTextButton("images/b_shoucang.png","收藏"),
                _createPicTextButton("images/b_bukejian.png","企业不可见"),
                _createPicTextButton("images/b_wdxz.png","我的下载")
              ],
            ),
          ),
          Container(
            height: 100,
            margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
            width: double.infinity,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _createPicTextButton("images/b_bkgw.png","报考的岗位"),
                _createPicTextButton("images/b_cjcx.png","成绩查询"),
                _createPicTextButton("images/b_kjzm.png","开具的证明")
              ],
            ),
          ),
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _createPicTextButton("images/b_ly.png","留言板"),
                _createPicTextButton("",""),
                _createPicTextButton("",""),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget _createPicTextButton(String imgPath,String name) {
    return InkWell(
      child: Container(
        width: 100,
        height: 100,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              imgPath,
              width: 30,
              height: 30,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
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

  @override
  void onClickErrorWidget() {
    // TODO: implement onClickErrorWidget
  }
}