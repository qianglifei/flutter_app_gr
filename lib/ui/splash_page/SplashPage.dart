import 'package:flutter/material.dart';

import '../app.dart';
///可变状态widget
class SplashPage extends StatefulWidget{
  _SplashPageState createState() => new _SplashPageState();
}
///可变状态控件的Widget的具体实现
class _SplashPageState extends State<SplashPage> {
  PageController _pageController = new PageController();
  int _index = 0;
  bool _isShowButton = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            _createPageView(),
            _createButtonWidget()
          ],
        ),
      ),
    );
  }

  Widget _createPageView() {
    return PageView(
      controller: _pageController,
      onPageChanged: (index){
        setState(() {
          _index = index;
          print(_index.toString());
          if(_index == 3){
            _isShowButton = true;
          }else{
            _isShowButton = false;
          }
        });
      },
      children: <Widget>[
        Container(
          color: Colors.white,
          child: Image.asset(
            "images/bg_ydy1.png",
            fit: BoxFit.fill,
            //无限大
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
        ),
        Container(
          color: Colors.white,
          child: Image.asset(
              "images/bg_ydy2.png",
              fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),
        ),
        Container(
          color: Colors.white,
          child: Image.asset(
            "images/bg_ydy3.png",
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),
        ),
        Container(
          color: Colors.white,
          child: Image.asset(
            "images/bg_ydy4.png",
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),
        )
      ],
    );
  }

  Widget _createButtonWidget() {
    return Positioned(
          right: 20,
          bottom: 20,
          child: Offstage(
              offstage: !_isShowButton,
              child: MaterialButton(
              minWidth: 80,
              child: Text( "下一步",style: TextStyle(fontSize: 18,color: Colors.white)),
              color: Colors.blue,
              onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context){
                        return new App();
                      }
                  )
                );
              },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),
          )
      )
    );
  }
}