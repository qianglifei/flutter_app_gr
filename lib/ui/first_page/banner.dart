import 'package:flutter/material.dart';
import 'package:flutter_app_gr/banner/banner_data_entity.dart';
import 'package:flutter_app_gr/http/common_service.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class BannerWidget extends StatefulWidget{
  _BannerWidgetState createState() => new _BannerWidgetState();
}

class _BannerWidgetState  extends State<BannerWidget>{
  List<BannerDataReturndataBanner> _bannerList = new List();

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
        if(_bannerList[index] == null || _bannerList[index].ggtpsclj == null){
          return Container(
            color: Colors.white,
          );
        }else{
          return buildItemImageWidget(context,index);
        }
      },
      itemCount: _bannerList.length,
      autoplay: true,
      pagination: new SwiperPagination(),
    );
  }

  Future<Null> _getBanner() {
    CommonService().getBannerList((BannerDataEntity _bannerModel){
        setState(() {
          print(_bannerModel.toString());
        //  _bannerList = _bannerModel.returnData.banners;
         // print(_bannerList.length.toString());
        });
    });
  }

  Widget buildItemImageWidget(BuildContext context, int index) {
    return new InkWell(
      child: Image.network(_bannerList[index].ggtpsclj,fit: BoxFit.fill),
      onTap: (){

      },
    );
  }
}