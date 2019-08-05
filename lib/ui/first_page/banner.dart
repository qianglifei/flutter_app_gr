import 'package:flutter/material.dart';
import 'package:flutter_app_gr/banner/banner_data.dart';
import 'package:flutter_app_gr/http/common_service.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
class BannerWidget extends StatefulWidget{
  _BannerWidgetState createState() => new _BannerWidgetState();
}

class _BannerWidgetState  extends State<BannerWidget>{
  List<BannerData> _bannerList = new List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _bannerList.add(null);
    _getBanner();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Swiper(
      itemWidth: double.infinity,
      itemHeight: 100,
      itemBuilder: (BuildContext context,int index){
        return new Container(
          width: 100,
          color: Colors.blue,
        );
      },
      itemCount: 0,
      autoplay: false,
      pagination: new SwiperPagination(),
    );
  }

  Future<Null> _getBanner() {
    CommonService().getBannerList((BannerData _bannerModel){
//      if(_bannerModel){
//
//      }
    });
  }
}