import 'package:flutter/material.dart';
import 'package:flutter_app_gr/base/base_widget.dart';

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
  AppBar getAppBar() {
    // TODO: implement getAppBar
    return AppBar(
      title: Text("不显示"),
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
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
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
                    height: 85,
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
                ],
              ),
              Container(
                height: 1000,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ListView.builder(
                        itemCount: _titleList.length,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context,int index){
                          return Text(_titleList[index].toString());
                        }
                    ),
                  ],
                ),
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

  Widget _buildTabControlWidget() {
//    return Row(
//        children: <Widget>[
//           ListView.builder(
//             scrollDirection: Axis.vertical,
//             controller: _scrollController,
//             itemCount: 10,
//             itemBuilder: (context,index){
//               return _buildItemWidget(context,index);
//             },
//           )
//        ],
//      );
  }

  Widget _buildItemWidget() {
    return Container(
      child: Text("hhalsdf")
    );
  }
}