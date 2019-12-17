import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_gr/entity/notice_data_entity.dart';
import 'package:flutter_app_gr/http/common_service.dart';
import 'package:flutter_app_gr/ui/first_page/marquee.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MarqueeContinuousWidget extends StatefulWidget {

  MarqueeContinuousWidget({Key key}) : super(key: key);

  @override
  _MarqueeContinuousWidgetState createState() => _MarqueeContinuousWidgetState();
}

class _MarqueeContinuousWidgetState extends State<MarqueeContinuousWidget> {
  List<NoticeDataReturndataZzzx> _noticeListData = new List();
  List<String> listDataEvenNumber = new List();
  List<String> listDataAddEvenNumber = new List();
  @override
  void initState() {
    super.initState();
    _noticeListData.add(null);
    _getNoticeInfo ();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
      return Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
            color: Colors.white,
            child: Flex(
              direction: Axis.horizontal,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Image.asset(
                    "images/rencaizixun.png",
                    height: 40,
                    width: 36,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 80,
                  height: 60,
                  margin: EdgeInsets.only(left: 8),
                  color: Colors.green,
                  child: Marquee(listDataEvenNumber.length, (BuildContext context,int index){
                    return Container(
                      child: Text(""),
                    );
                  }),
                )
              ],
            ),
        );
  }

  ///加载首页通知公告
  Future<Null> _getNoticeInfo () async{
    CommonService().getNoticeData((NoticeDataEntity _entityDataEntity){
      setState(() {
         _noticeListData = _entityDataEntity.returnData.zzzx;
         if(_noticeListData == null || _noticeListData.length == 0){
           return null;
         }
         for(int index = 0 ; index < _noticeListData.length ; index ++){
            if(index % 2 == 0){
              listDataEvenNumber.add(_noticeListData[index].bt);
            }else{
              listDataAddEvenNumber.add(_noticeListData[index].bt);
            }
         }
         print("偶数" + listDataEvenNumber.toString());
         print("奇数" + listDataAddEvenNumber.toString());
      });
    });
  }
}
