import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_gr/entity/notice_data_entity.dart';
import 'package:flutter_app_gr/http/common_service.dart';

//class MarqueeSingle<T> extends StatefulWidget {
//  final Widget child;
//
//  MarqueeSingle({Key key, this.child}) : super(key: key);
//
//  @override
//  _MarqueeSingleState<T> createState() => _MarqueeSingleState();
//}
//
//class _MarqueeSingleState<T> extends State<MarqueeSingle> with SingleTickerProviderStateMixin {
//  AnimationController _controller;
//  Animation<Offset> _animation;
//  List marqueeDataList = new List();
//
//  @override
//  void initState() {
//    super.initState();
//    _controller =
//        AnimationController(vsync: this, duration: Duration(seconds: 10));
//    _animation = Tween<Offset>(begin: Offset(1.0, 0.0), end: Offset(-1.0, 0.0))
//        .animate(_controller);
//    _animation.addListener(() {
//      setState(() {});
//    });
//    _controller.repeat();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return ClipRect(child: FractionalTranslation(
//        translation: _animation.value,
//        child: SingleChildScrollView(
//            scrollDirection: Axis.horizontal, child: widget.child)));
//  }
//
//  @override
//  void dispose() {
//    _controller.dispose();
//    super.dispose();
//  }
//}

class MarqueeContinuous extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final double stepOffset;
  List<NoticeDataReturndataZzzx> listData;
  MarqueeContinuous({Key key,
        this.child,
        this.duration = const Duration(seconds: 2),
        this.stepOffset = 50.0,
        this.listData,
      }) : super(key: key);

  @override
  _MarqueeContinuousState createState() => _MarqueeContinuousState();
}

class _MarqueeContinuousState extends State<MarqueeContinuous> {
  List<NoticeDataReturndataZzzx> _noticeListData = new List();
  ScrollController _controller;
  Timer _timer;
  double _offset = 0.0;

  @override
  void initState() {
    super.initState();
    _noticeListData.add(null);
    _getNoticeInfo ();
    _controller = ScrollController(initialScrollOffset: _offset);
    _timer = Timer.periodic(widget.duration, (timer) {
      double newOffset = _controller.offset + widget.stepOffset;
      if (newOffset != _offset) {
        _offset = newOffset;
        _controller.animateTo(_offset,
            duration: widget.duration, curve: Curves.linear);
        _controller.jumpTo()
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          controller: _controller,
          itemBuilder: (context, index) {
            return Container(
              height: 40,
              margin: EdgeInsets.fromLTRB(100, 0, 0, 0),
              color: Colors.blue,
              child: Text(_noticeListData[index].bt),
            );
          })
    );
  }

//  Widget buildItemWidget(BuildContext context, int index) {
//   // print("nimabi" + _noticeListData[index].toString());
//    return Container(
//      height: 1000,
//      width: 300,
//      color: Colors.blue,
//      child: Text(_noticeListData[index].bt),
//    );
//  }

  ///加载首页通知公告
  Future<Null> _getNoticeInfo () async{
    CommonService().getNoticeData((NoticeDataEntity _entityDataEntity){
      setState(() {
        _noticeListData = _entityDataEntity.returnData.zzzx;
        _noticeListData.insert(0 , _noticeListData[_noticeListData.length - 1]);
        _noticeListData.insert(_noticeListData.length , _noticeListData[0]);
        for(var i = 0 ; i < _noticeListData.length ; i++){
          var s = _noticeListData[i];
          print(s.bt);
        }
      });
    });
  }
}
