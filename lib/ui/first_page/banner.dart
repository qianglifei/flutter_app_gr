

import 'package:flutter/material.dart';
import 'package:flutter_app_gr/entity/banner_data_entity.dart';
import 'package:flutter_app_gr/http/common_service.dart';
import 'package:flutter_app_gr/ui/company/company_page.dart';
import 'package:flutter_app_gr/ui/company_h5/company_h5_screen.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../policy_consult_screen.dart';

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
            Fluttertoast.showToast(msg: "banner 点击了$index" + "个item");
//            Navigator.push(context, MaterialPageRoute(builder: (_){
//                  return new CompanyPage();
//            }));
            String ggnrlx = _bannerList[index].ggnrlx;
            String id = _bannerList[index].ljbs;
            //Navigator.pushNamed(context,"company/CompanyPage",arguments: <String,String>{"dwxx_id":id});
            print(ggnrlx);
            switch(ggnrlx){
              //单位详情
              case "10":{
                Navigator.push(context, MaterialPageRoute(builder: (context) => CompanyPage(id)));
              }break;
              //外部链接
              case "30":{
                Navigator.push(context, MaterialPageRoute(builder: (context) => CompanyH5Screen(id)));
              }break;
              //政策咨询
              case "50":{
                Navigator.push(context, MaterialPageRoute(builder: (context) => PolicyConsultScreen(id)));
              }break;
              //活动详情
              case "60":{

              }break;
            }
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

