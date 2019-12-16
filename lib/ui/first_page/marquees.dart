import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_gr/entity/notice_data_entity.dart';
import 'package:flutter_app_gr/http/common_service.dart';
import 'package:flutter_app_gr/ui/first_page/marquee.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MarqueeContinuousWidget extends StatefulWidget {
  List<String> listDataEvenNumber = new List();
  List<String> listDataAddEvenNumber = new List();
  MarqueeContinuousWidget({Key key}) : super(key: key);

  @override
  _MarqueeContinuousWidgetState createState() => _MarqueeContinuousWidgetState();
}

class _MarqueeContinuousWidgetState extends State<MarqueeContinuousWidget> {
  List<NoticeDataReturndataZzzx> _noticeListData = new List();

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
      return GestureDetector(
            child: Container(
            height: 60,
            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Image.asset(
                    "images/rencaizixun.png",
                    height: 41,
                    width: 36,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: 350,
                  height: 60,
                  color: Colors.greenAccent,
                  child: Marquee(widget.listDataEvenNumber.length, (BuildContext context, int index){
                    return Container(
                      child: Column(
                        children: <Widget>[
                          Text(widget.listDataEvenNumber[index],overflow: TextOverflow.ellipsis),
                          Text(widget.listDataAddEvenNumber[index],overflow: TextOverflow.ellipsis),
                        ],
                      ),
                    );
                  })
                )
              ],
            ),
          ),
          onTap: (){
              Fluttertoast.showToast(msg: "item 点击事件");
          },
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
              widget.listDataEvenNumber.add(_noticeListData[index].bt);
            }else{
              widget.listDataAddEvenNumber.add(_noticeListData[index].bt);
            }
         }
         print("偶数" + widget.listDataEvenNumber.toString());
         print("奇数" + widget.listDataAddEvenNumber.toString());
      });
    });
  }
}
