import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  _SplashPageState createState() => new _SplashPageState();
}

class _SplashPageState extends State<SplashPage>{
  PageController _pageController = new PageController();
  int _pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            _createPageView(),
          ],
        ),
      ),
    );
  }

  Widget _createPageView() {
    return PageView(
      controller: _pageController,
      onPageChanged: (pageIndex){
        setState(() {
          _pageIndex = pageIndex;
        });
      },
      children: <Widget>[
        Container(
          color: Colors.white,
          child:Image.asset(
            'images/bg_ydy1.png',
            //TODO 需要重新复习
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
        )
      ],
    );
  }
}