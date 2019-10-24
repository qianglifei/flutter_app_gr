import 'dart:core';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_app_gr/base/base_widget.dart';
import 'package:flutter_app_gr/custom_widget/custom_app_bar.dart';
import 'package:flutter_app_gr/custom_widget/custom_indicator.dart';
import 'package:flutter_app_gr/entity/news_parent_list_entity.dart';
import 'package:flutter_app_gr/http/common_service.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_app_gr/entity/favourite_entity.dart';

class ConsultPage extends BaseWidget{
  @override
  BaseWidgetState<BaseWidget> getState() {
    // TODO: implement getState
    return ConsultPageState();
  }

}

class ConsultPageState extends BaseWidgetState<ConsultPage> with TickerProviderStateMixin{
  List<NewsParentListEntityReturndataFlxlb> _tabTitleLists = new List();
  List<Tab> _tabsLists = new List();
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //获取网络数据
    _getNewsListTitle();
    _tabController = TabController(length: _tabTitleLists.length, vsync: this);
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
       body: Column(
             mainAxisSize: MainAxisSize.max,
             children: <Widget>[
               Container(
                 width: MediaQuery.of(context).size.width - 100,
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
                       width:MediaQuery.of(context).size.width - 62,
                       color: Colors.white,
                       child: TabBar(
                         controller: _tabController,
                         tabs: _tabTitleLists.map<Tab>((NewsParentListEntityReturndataFlxlb tab){
                           return Tab(
                             text: tab.flxmc,
                           );
                         }).toList(),
                         isScrollable: true,
                         indicatorColor: Colors.blue,
                         labelColor: Colors.blue,
                         unselectedLabelColor: Colors.grey,
                         indicator: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/icon_line.png"),
                              alignment: Alignment.bottomCenter,
                            ),
                         ),
                         indicatorSize:  TabBarIndicatorSize.label,
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
                     controller: _tabController,
                     children: _tabTitleLists.map((item){
                       return Center(
                         child: _ContentList(item.flxmc,item.flxbh),
                       );
                     }).toList(),
                 )
               )
             ]
       ),
    );

  }

  @override
  void onClickErrorWidget() {
    // TODO: implement onClickErrorWidget
    showLoading();
    //TODO: 重新加载数据内容
  }

  ///网络请求
  Future<Null> _getNewsListTitle() async{
    CommonService().getNewsListTitleData((NewsParentListEntity newsParentListEntity){
        setState(() {
            _tabTitleLists = newsParentListEntity.returnData.flxlb;
            _tabController = new TabController(length: _tabTitleLists.length, vsync: this);
            for(int i = 0 ; i < _tabTitleLists.length ; i ++){
              _tabsLists.add(Tab(text: _tabTitleLists[i].flxmc));
              print(_tabTitleLists[i].flxmc);
            }
        });
    });
  }
}

class _ContentList extends StatefulWidget{
  String flxmc = "";
  String flxbh = "";

  _ContentList(String flxmc,String flxbh){
    this.flxmc = flxmc;
    this.flxbh = flxbh;
  }

  @override
  _ContentListState createState() {
    // TODO: implement createState
    return _ContentListState();
  }
}

class _ContentListState extends State<_ContentList> {
  GlobalKey<EasyRefreshState> _easyRefreshKey = new GlobalKey<EasyRefreshState>();
  List<FavouriteReturndataZx> _likeList = new List();
  String ITEM_TYPE_ONE = "1";
  String ITEM_TYPE_TWO = "2";
  String ITEM_TYPE_THREE = "3";
  String ITEM_TYPE_FOURE = "4";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData();
  }

  Future<Null> _getData () async{
    CommonService().getLikeListData((FavouriteEntity favouriteEntity){
        setState(() {
          _likeList = favouriteEntity.returnData.zxs;
        });
    });
  }

  Future<Null> _getMoreData() async{

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return EasyRefresh(
      key: _easyRefreshKey,
      child: ListView.separated(
          itemBuilder: _renderItem,
          //设置physics 属性，总是可以滚动
          physics: new AlwaysScrollableScrollPhysics(),
          //分割线
          separatorBuilder: (BuildContext context,int index){
            return Container(
              height: 0.5,
              color: Colors.grey,
            );
          },
          itemCount: 40
      ),
      onRefresh: () async{
        _getData();
      },

      loadMore: () async{
        _getMoreData();
      },

    );
  }


  Widget _renderItem(BuildContext context, int index) {
    Widget widget;
    switch(_likeList[index].fmmblx){
      case "1" :{

      }break;
      case "2" :{

      }break;
      case "3" :{

      }break;
    }
    return widget;
  }
}