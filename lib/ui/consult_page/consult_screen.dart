import 'package:flutter/material.dart';
import 'package:flutter_app_gr/base/base_widget.dart';
import 'package:flutter_app_gr/custom_widget/custom_app_bar.dart';
import 'package:flutter_app_gr/entity/news_parent_list_entity.dart';
import 'package:flutter_app_gr/http/common_service.dart';

class ConsultPage extends BaseWidget{
  @override
  BaseWidgetState<BaseWidget> getState() {
    // TODO: implement getState
    return ConsultPageState();
  }

}

class ConsultPageState extends BaseWidgetState<ConsultPage> {
  List<NewsParentListEntityReturndataFlxlb> _tabTitleLists = new List();
  List<Tab> _tabsLists = new List();

  @override
  void initState() {
    // TODO: implement initState
    _tabTitleLists.add(null);
    //获取网络数据
    _getNewsListTitle();
    super.initState();
  }
  @override
  CustomAppBar getAppBar() {
    // TODO: implement getAppBar
    return CustomAppBar(
      child: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            SafeArea(
                child: Container(
                    color: Colors.transparent,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding:EdgeInsets.fromLTRB(15, 6, 0,0),
                          child:Image.asset(
                            "images/kefu.png",
                            height: 23,
                            width: 21,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(13, 0, 0, 2),
                          child: Text("小筑",style: TextStyle(color: Colors.grey)),
                        )
                      ],
                    )
                ),
            ),
           SafeArea(
               child: Container(
                 margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                 width: MediaQuery.of(context).size.width - 100,
                 height: 40,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.all(Radius.circular(3)),
                   color: Color.fromRGBO(238, 242, 248, 0.6),
                 ),
                 child: Row(
                   children: <Widget>[
                     Padding(
                       child:Image.asset(
                         "images/search_news.png",
                         width: 20,
                         height: 20,
                         fit: BoxFit.cover,
                       ),
                       padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                     ),
                     Padding(
                       padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                       child: Text("搜索关键词、关键字",style: TextStyle(color: Colors.grey)),
                     )
                   ],
                 ),
               ),
           ),
            SafeArea(
                child: Container(
                    color: Colors.transparent,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding:EdgeInsets.fromLTRB(10, 5, 0,0),
                          child:Image.asset(
                            "images/b_xinfeng.png",
                            height: 23,
                            width: 21,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 2),
                          child: Text("消息",style: TextStyle(color: Colors.grey)),
                        )
                      ],
                    )
                ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget getContentWidget(BuildContext context) {
    // TODO: implement getContentWidget
    return Scaffold(
       body: DefaultTabController(
           length: _tabsLists.length,
           child: Column(
             children: <Widget>[
               Container(
                 width: MediaQuery.of(context).size.width,
                 height: 2,
                 decoration: BoxDecoration(
                   color: Color.fromRGBO(238, 242, 248, 1)
                 ),
               ),

               Container(
                 color: Colors.white,
                 child: Row(
                   children: <Widget>[
                     Container(
                       width:350,
                       child: TabBar(
                         tabs: _tabsLists,
                         isScrollable: true,
                         indicatorColor: Colors.blue,
                         labelColor: Colors.blue,
                         unselectedLabelColor: Colors.grey,
//                         indicator: const BoxDecoration(
//                            image: DecorationImage(
//                              image: Image.
//                            ),
//                         ),
                       ),
                     ),
                     Container(
                       width: 2,
                       height: 17,
                       color: Colors.grey,
                       margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                     ),
                     Container(
                       margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                       child: Image.asset(
                         "images/caidan.png",
                         width: 30,
                         height: 30,
                         fit: BoxFit.cover,
                       ),
                     )
                   ],
                 )
               ),
                ///使用TabBarView是有条件的，TabBarView的父Widget必须知道宽高才能布局，
               ///但是一般我们在市级项目中又不会把宽高写死，因此我们一般会在一个Expanded中
               ///加入TabBarView
//               TabBarView(
//                   children: _tabsLists.map((Tab tab) => Center(child: Text(tab.text))).toList(),
//               )
               Expanded(
                 flex: 1,
                 child: TabBarView(
                     children: _tabsLists.map((Tab tab) => Center(child: Text(tab.text,style: TextStyle(fontSize: 27)))).toList(),
                 )
               )
             ],
           )
       ),
    );

  }

  @override
  void onClickErrorWidget() {
    // TODO: implement onClickErrorWidget
  }

  ///网络请求
  Future<Null> _getNewsListTitle() async{
    CommonService().getNewsListTitleData((NewsParentListEntity newsParentListEntity){
        setState(() {
            _tabTitleLists = newsParentListEntity.returnData.flxlb;
            for(int i = 0 ; i < _tabTitleLists.length ; i ++){
              _tabsLists.add(Tab(text: _tabTitleLists[i].flxmc));
            }
        });
    });
  }
}