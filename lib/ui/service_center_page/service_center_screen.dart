import 'dart:core' as prefix0;
import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_gr/base/base_widget.dart';
import 'package:flutter_app_gr/custom_widget/custom_app_bar.dart';
import 'package:flutter_app_gr/ui/service_center_page/service_data_add.dart';
import 'package:flutter_app_gr/ui/service_center_page/service_entity.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ServiceCenterPage extends BaseWidget{
  @override
  BaseWidgetState<BaseWidget> getState() {
    // TODO: implement getState
    return ServiceCenterPageState();
  }

}

class ServiceCenterPageState extends BaseWidgetState<ServiceCenterPage> {
  List<String> _titleList = new List();
  ScrollController _scrollController = new ScrollController();
  Color _ItemColor;
  bool check = false;
  List<ServiceEntity> _list = [];
  @override
  CustomAppBar getAppBar() {
    // TODO: implement getAppBar
    return CustomAppBar(
      child:Stack(
          children: <Widget>[
            Image.asset(
              "images/bq.png",
              width: MediaQuery.of(context).size.width,
              height: 80,
              fit: BoxFit.fill,
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(12, 35, 0, 10),
                child: Image.asset(
                  "images/kefubai.png",
                  width: 34,
                  height: 31,
                )
            ),
            Container(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Align(
                  child: Text("服务大厅",style: TextStyle(color: Colors.white,fontSize: 20)),
                )
            )
          ]),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _titleList..
    add("人才服务")..
    add("专家服务")..
    add("就业服务")..
    add("培训服务")..
    add("档案服务")..
    add("中介服务")..
    add("综合服务");
  }
  @override
  Widget getContentWidget(BuildContext context) {
    // TODO: implement getContentWidget
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              color: Color.fromARGB(1,238, 242, 248)
          ),
          child: Row(
              children: <Widget>[
                SizedBox(
                  width: 100,
                    child: ListView.builder(
                      controller: _scrollController,
                      itemCount: _titleList.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context,int index){
                        return ListTile(
                          title: Text(_titleList[index]),
                          selected: check,
                          onTap: (){
                              updateContentData(context,index);
                              Fluttertoast.showToast(msg: _titleList[index]);
                          },
                        );
                      }
                  ),
                ),
               SizedBox(
                 width: MediaQuery.of(context).size.width - 100,
                 child: GridView.count(
                     //一行Widget的数量
                     crossAxisCount: 3,
                     //水平子Widget之间间距
                     crossAxisSpacing: 10.0,
                     //垂直子Widget之间间距
                     mainAxisSpacing: 10.0,
                     //GridView 内边距
                     padding: EdgeInsets.all(10.0),
                     //子Widget宽高比
                     childAspectRatio: 1.0,
                     //子Widget列表
                     children: getWidgetList(_list)
                 ),
               )
            ],
          )
      )
    );
  }

  @override
  void onClickErrorWidget() {
    // TODO: implement onClickErrorWidget

  }

  List<ServiceEntity> getDataList(List<ServiceEntity> listData) {
    List<ServiceEntity> list = [];
    if(list != null && list.length != null){
        list = listData;
    }
    return list;
  }

  List<Widget> getWidgetList(List<ServiceEntity> list) {
    return getDataList(_list).map((serviceEntity) => getItemContainer(serviceEntity)).toList();
  }

  Widget getItemContainer(ServiceEntity serviceEntity) {
    return Container(
      alignment: Alignment.center,
      child: _createPicTextBtn(serviceEntity.picUrl,serviceEntity.titleName),
    );
  }

  void updateContentData(BuildContext context, int index) {
    switch(index) {
    //人才服务
      case 0:
        setState(() {
          _list = getDataList(ServiceDataContents.getListTalents());
        });
        break;
    //专家服务
      case 1:
        setState(() {
          _list = getDataList(ServiceDataContents.getListSpecialist());
        });
        break;
    //就业服务
      case 2:
        setState(() {
          _list = getDataList(ServiceDataContents.getListEmploymentList());
        });
        break;
    //培训服务
      case 3:
        setState(() {
          _list = getDataList(ServiceDataContents.getListTrainList());
        });
        break;
    //档案服务
      case 4:
        setState(() {
          _list = getDataList(ServiceDataContents.getListRecord());
        });
        break;
    //中介服务
      case 5:
        _list = getDataList(ServiceDataContents.getListIntermediaryAgent());
        break;
    //综合服务
      case 6:
        _list = getDataList(ServiceDataContents.getListSynthesize());
        break;
    }
  }

  Widget _createPicTextBtn(String imgUrl,String item) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            imgUrl,
            width: 40,
            height: 40,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
            child: Text(item,style: TextStyle()),
          )
        ],
      ),
    );
  }
}