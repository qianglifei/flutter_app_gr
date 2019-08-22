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
  List<String> _list = new List();
  ScrollController _scrollController = new ScrollController();
  @override
  AppBar getAppBar() {
    // TODO: implement getAppBar
    return AppBar(
      title: Text("不显示"),
    );
  }

  @override
  Widget getContentWidget(BuildContext context) {
    // TODO: implement getContentWidget
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.asset(
                    "images/bq.png",
                    width: MediaQuery.of(context).size.width,
                    height: 82,
                    fit: BoxFit.fill,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(12, 39, 0, 0),
                    child: Image.asset(
                      "images/kefubai.png",
                      width: 34,
                      height: 31,
                    )
                  ),
                  Container(
                     padding: EdgeInsets.fromLTRB(0, 39, 0, 0),
                     child: Align(
                       child: Text("服务大厅",style: TextStyle(color: Colors.white,fontSize: 20)),
                     )
                  )
                ],
              ),
//              ListView.builder(
//                  scrollDirection: Axis.vertical,
//                  itemCount: 10,
//                  itemBuilder: (context,index){
//                return Text("asklkdfk");
//              }),
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