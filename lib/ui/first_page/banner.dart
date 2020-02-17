import 'package:flutter/material.dart';
import 'package:flutter_app_gr/entity/banner_data_entity.dart';
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
    return Container(
        height: 238,
        child:Swiper(
          itemBuilder: (BuildContext context,int index){
            if(_bannerList[index] == null || _bannerList[index].ggtpsclj == null){
              return Container(
                color: Colors.blue,
              );
            }else{
              return buildItemImageWidget(context,index);
            }
          },
          itemCount: _bannerList.length,
          autoplay: true,
          pagination: new SwiperPagination(),
          onTap: (index){

          },
        )
    );

  }

  Future<Null> _getBanner() async{
    CommonService().getBannerList((BannerDataEntity _bannerModel){
          setState(() {
            _bannerList = _bannerModel.returnData.banners;
              for (var i = 0; i < _bannerList.length; ++i) {
                var o = _bannerList[i];
                print(o.ggtpsclj + o.ggtpfwdmc);
              }
          });
    });
  }

  Widget buildItemImageWidget(BuildContext context, int index) {
    return new InkWell(
      child: Container(
        child: Image.network(
            _bannerList[index].ggtpsclj + _bannerList[index].ggtpfwdmc,
            fit: BoxFit.fill,
        ),
      ),
    );
  }
}