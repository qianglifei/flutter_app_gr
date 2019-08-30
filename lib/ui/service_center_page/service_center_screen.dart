import 'package:flutter/material.dart';
import 'package:flutter_app_gr/base/base_widget.dart';
import 'package:flutter_app_gr/custom_widget/custom_app_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
  @override
  CustomAppBar getAppBar() {
    // TODO: implement getAppBar
    return CustomAppBar(
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
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.asset(
                  "images/bq.png",
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  fit: BoxFit.fill,
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(12, 45, 0, 0),
                      child: Image.asset(
                        "images/kefubai.png",
                        width: 34,
                        height: 31,
                      )
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(0, 47, 0, 0),
                      child: Align(
                        child: Text("服务大厅",style: TextStyle(color: Colors.white,fontSize: 20)),
                      )
                  )
              ]),
              Container(
                child:Container(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 15,
                        child:Container(
                          height: 650,
                          child: ListView.builder(
                              controller: _scrollController,
                              itemCount: _titleList.length,
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context,int index){
                                return Material(
                                    child: InkWell(
                                        child: Container(
                                            height: 50,
                                            color: Colors.white,
                                            child: Center(
                                              child: Text(
                                                _titleList[index].toString(),
                                                style: TextStyle(fontSize: ScreenUtil().setSp(40)),
                                              ),
                                            )
                                        )
                                    )
                                );
                              }
                          ),
                        ) ,
                      ),
                      Expanded(
                        child: Container(
                          width: 1,
                          height: 650,
                          color: Colors.grey,
                          child: Text(""),
                        )
                      ),
                      Expanded(
                        flex: 50,
                        child: Container(
                          height: 650,
                          child: GridView.count(
                              shrinkWrap: true,
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
                              children: getWidgetList()
                          )
                        )
                      ),
                    ],
                  ),
                ) ,
              )
            ],
          ),
        ),
    );
  }

  @override
  void onClickErrorWidget() {
    // TODO: implement onClickErrorWidget

  }
  List<String> getDataList() {
    List<String> list = [];
    for (int i = 0; i < 12; i++) {
      list.add(i.toString());
    }
    return list;
  }

  List<Widget> getWidgetList() {
    return getDataList().map((item) => getItemContainer(item)).toList();
  }

  Widget getItemContainer(String item) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        item,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      color: Colors.blue,
    );
  }
}