import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_gr/http/common_service.dart';


class BannerSecond extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BannerSecondState();
  }

}

class _BannerSecondState extends State<BannerSecond>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 63,
      margin: EdgeInsets.fromLTRB(15, 0, 15, 10),
      color: Colors.blue,
    );
  }

  Future<Null> _getData() async{
    CommonService().getBannerSecondData((){

    });
  }
}


