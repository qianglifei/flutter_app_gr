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
  bool _isVisible = false;

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
      offstage: true,
      child:Container(
        height: 63,
        margin: EdgeInsets.fromLTRB(15, 0, 15, 10),
        child: Swiper(
          controller: SwiperController(),
          itemCount: _listData.length == 0 ? 0 : _listData.length,
          itemBuilder: (BuildContext context,int index){
            if(_listData == null || _listData.length == 0){
              return Container(
                width: 0,
                height: 0,
              );
            }else{
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
          if(_listData == null || _listData.length == 0){
            print("SecondBanner："+ "数据为空");
            _isVisible = false;
          }else{
            _isVisible = true;
          }
        });
    });
  }
}


