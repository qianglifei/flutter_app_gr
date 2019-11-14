import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_gr/http/common_service.dart';

import 'package:flutter_app_gr/entity/second_banner_entity.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BannerSecond extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BannerSecondState();
  }

}

class _BannerSecondState extends State<BannerSecond>{
  List<SecondBannerReturndataBanner> _listData = new List();
  bool isVisible = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Offstage(
      offstage: isVisible,
      child:Container(
        height: 63,
        margin: EdgeInsets.fromLTRB(15, 0, 15, 10),
        child: Swiper(
          itemCount: _listData.length,
          itemBuilder: (BuildContext context,int index){
            if(_listData[index] == null || _listData[index].ggtpfwdmc == null){
              Fluttertoast.showToast(msg: "没数据的");
              isVisible = true;
              return null;
            }else{
              Fluttertoast.showToast(msg: "有数据的");
              isVisible = false;
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.green
                ),
                child: Image.
                network(
                  _listData[index].ggtpsclj + _listData[index].ggtpfwdmc,
                  fit: BoxFit.fill
                ),
              );
            }
          },
        ),

      )
    );
  }

  Future<Null> _getData() async{
    CommonService().getBannerSecondData((SecondBannerEntity secondBannerEntity){
        setState(() {
          _listData = secondBannerEntity.returnData.banners;
          print("SecondBanner："+_listData[0].ggtpsclj + _listData[0].ggtpfwdmc);
        });
    });
  }
}


