
import 'dart:async';

import 'package:flutter/cupertino.dart';

class Marquee extends StatefulWidget{
  //子视图数量
  int count;
  //子视图构造器
  IndexedWidgetBuilder itemBuilder;
  //构造函数
  Marquee(this.count,this.itemBuilder);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MarqueeState();
  }
}

class _MarqueeState extends State<Marquee> {
  PageController _controller;
  Timer _timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller = new PageController();

    _timer = Timer.periodic(Duration(seconds: 2), (timer){
        //如果当前位于最后一页，则直接跳转到第一页，两者内容相同，跳转时，视觉上无感知
      if(_controller.page.round() >= widget.count){
        _controller.jumpToPage(0);
      }
      _controller.nextPage(duration: Duration(seconds: 1), curve: Curves.linear);
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView.builder(
        itemBuilder: (buildContext,index){
          if(index < widget.count){
            return widget.itemBuilder(buildContext,index);
          }else{
            return widget.itemBuilder(buildContext,0);
          }
        },
        //在原数据末尾加一笔数据（即第一笔数据）
        //用于实现无限循环滚动效果
        itemCount: widget.count + 1,
        controller: _controller,
        scrollDirection: Axis.vertical,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
    _timer.cancel();
  }
}