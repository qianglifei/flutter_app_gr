//import 'dart:async';
//
//import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
//import 'package:flutter_app_gr/entity/notice_data_entity.dart';
//import 'package:flutter_app_gr/http/common_service.dart';
//import 'package:fluttertoast/fluttertoast.dart';
//
//class MarqueeContinuousWidget extends StatefulWidget {
//  final Widget child;
//  final Duration duration;
//  final double stepOffset;
//  List<NoticeDataReturndataZzzx> listData;
//  MarqueeContinuousWidget({Key key,
//        this.child,
//        this.duration = const Duration(seconds: 2),
//        this.stepOffset = 40.0,
//        this.listData,
//      }) : super(key: key);
//
//  @override
//  _MarqueeContinuousWidgetState createState() => _MarqueeContinuousWidgetState();
//}
//
//class _MarqueeContinuousWidgetState extends State<MarqueeContinuousWidget> {
//  List<NoticeDataReturndataZzzx> _noticeListData = new List();
//  ScrollController _controller;
//  Timer _timer;
//  double _offset = 0.0;
//  int _index = 0;
//  @override
//  void initState() {
//    super.initState();
//    _noticeListData.add(null);
//    _getNoticeInfo ();
//    _controller = ScrollController(initialScrollOffset: _offset);
//    _timer = Timer.periodic(widget.duration, (timer) {
//      double newOffset = _controller.offset + widget.stepOffset;
//      if (newOffset != _offset) {
//        _offset = newOffset;
//        _controller.animateTo(_offset, duration: Duration(seconds: 1), curve: Curves.linear);
//        _index++;
//        print(_index++);
//        if(_index == _noticeListData.length){
//          _index = 0;
//        }
//      }
//    });
//  }
//
//  @override
//  void dispose() {
//    _timer.cancel();
//    _controller.dispose();
//    super.dispose();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//      return GestureDetector(
//            child: Container(
//            height: 60,
//            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
//            width: MediaQuery.of(context).size.width,
//            color: Colors.white,
//            child: Row(
//              children: <Widget>[
//                Container(
//                  margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
//                  child: Image.asset(
//                    "images/rencaizixun.png",
//                    height: 41,
//                    width: 36,
//                    fit: BoxFit.cover,
//                  ),
//                ),
//                Container(
//                    height: 60,
//                    width: MediaQuery.of(context).size.width - 80,
//                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
//                    child: ListView.separated(
//                        itemCount: _noticeListData.length,
//                        scrollDirection: Axis.vertical,
//                        controller: _controller,
//                        separatorBuilder: (context,index){
//                          return Container(
//                            width: MediaQuery.of(context).size.width,
//                            height: 1,
//                            color: Colors.black,
//                          );
//                        },
//                        physics: new NeverScrollableScrollPhysics(),
//                        itemBuilder: (context,index){
//                            return Container(
//                              color: Colors.blue,
//                                height: 30,
//                                child: Row(
//                                  children: <Widget>[
//                                    Container(
//                                      width: 6,
//                                      height: 6,
//                                      decoration: BoxDecoration(
//                                          shape: BoxShape.circle,
//                                          color: Colors.black
//                                      ),
//                                    ),
//                                    Container(
//                                      width: MediaQuery.of(context).size.width - 150,
//                                      height: 30,
//                                      padding: EdgeInsets.fromLTRB(10, 4, 0, 10),
//                                      color: Colors.white,
//                                      child: Text(
//                                        _noticeListData[index].bt,
//                                        maxLines: 1,
//                                        overflow: TextOverflow.visible,
//                                        style: TextStyle(fontSize: 15),
//                                      ),
//                                    )
//                                  ],
//                                )
//                            );
//                        })
//                )
//              ],
//            ),
//          ),
//          onTap: (){
//              Fluttertoast.showToast(msg: "item 点击事件");
//          },
//        );
//
//  }
//
//  ///加载首页通知公告
//  Future<Null> _getNoticeInfo () async{
//    CommonService().getNoticeData((NoticeDataEntity _entityDataEntity){
//      setState(() {
//        _noticeListData = _entityDataEntity.returnData.zzzx;
//        _noticeListData.insert(0 , _noticeListData[_noticeListData.length - 1]);
//        _noticeListData.insert(_noticeListData.length , _noticeListData[0]);
//      });
//    });
//  }
//}
