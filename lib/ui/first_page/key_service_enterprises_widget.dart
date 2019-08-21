import 'package:flutter/material.dart';
import 'package:flutter_app_gr/entity/key_service_enterprises_entity.dart';
import 'package:flutter_app_gr/http/common_service.dart';

class KeyServiceEnterPrisesWidget extends StatefulWidget{
   _KeyServiceEnterPrisesWidget createState() => new _KeyServiceEnterPrisesWidget();
}

class _KeyServiceEnterPrisesWidget extends State<KeyServiceEnterPrisesWidget>{
  List<KeyServiceEnterprisesReturndataZdqylb> _listData = new List();
  ScrollController _controller;
  double _offset = 0.0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _listData.add(null);
    _getKeyServiceEnterprises();
    _controller = ScrollController(initialScrollOffset: _offset);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 190,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          _titleBarWidget(),
          _enterprisesListWidget()
        ],
      ),
    );
  }

  Widget _titleBarWidget() {
    return Container(
      height: 30,
      child: Container(
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Image.asset(
                "images/zdqy.png",
                width: 20,
                height: 20,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text(
                "重点服务企业",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              child: Image.asset(
                "images/jiantou.png",
                width: 10,
                height: 15,
                fit: BoxFit.fill,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _enterprisesListWidget() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      height: 125,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        controller: _controller,
        itemCount: _listData.length,
        itemBuilder: (context,index){
          return buildItemWidget(context,index);
        },
      ),
    );
  }

  Future<Null> _getKeyServiceEnterprises() async{
    String _pageSize = "20";
    String _pageNum = "1";
    CommonService().
    getKeyServiceEnterprisesData(
    (KeyServiceEnterprisesEntity _keySerEnterprises){
      setState(() {
        _listData = _keySerEnterprises.returnData.zdqylbs;
      });
    },_pageSize,_pageNum);
  }

  Widget buildItemWidget(BuildContext context, int index) {
    return Container(
      height: 160,
      width: 105,
      color: Colors.white,
      child:Center(
        child: Container(
          width: 75,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(9)),
            color: Colors.black12
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.network(
                _listData[index].dwlgsc + _listData[index].dwlgfwdmc,
                height: 49,
                width: 49,
                fit: BoxFit.fill,
              ),
              Text(
                _listData[index].dwmc,
                maxLines: 2,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        )

      )
    );
  }
}

