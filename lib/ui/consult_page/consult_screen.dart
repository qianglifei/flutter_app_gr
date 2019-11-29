import 'dart:core';
import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_gr/base/base_widget.dart';
import 'package:flutter_app_gr/custom_widget/custom_app_bar.dart';
import 'package:flutter_app_gr/custom_widget/custom_indicator.dart';
import 'package:flutter_app_gr/entity/news_parent_list_entity.dart';
import 'package:flutter_app_gr/http/common_service.dart';
import 'package:flutter_app_gr/ui/dialog_custom/menu_dialog.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_app_gr/entity/favourite_entity.dart';
import 'package:flutter_easyrefresh/material_footer.dart';
import 'package:flutter_easyrefresh/material_header.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ConsultPage extends BaseWidget{
  @override
  BaseWidgetState<BaseWidget> getState() {
    // TODO: implement getState
    return ConsultPageState();
  }

}

class ConsultPageState extends BaseWidgetState<ConsultPage> with TickerProviderStateMixin{
  List<NewsParentListEntityReturndataFlxlb> _tabTitleLists = new List();
  List<String> _tabsLists = new List();
  TabController _tabController;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //获取网络数据
    _getNewsListTitle();
    _tabController = TabController(length: _tabTitleLists.length, vsync: this);

    //TabBar 监听器
    _tabController.addListener((){
      return _onTabChanged();
    });

  }
  @override
  CustomAppBar getAppBar() {
    // TODO: implement getAppBar
    EdgeInsets padding = MediaQuery.of(context).padding;
    double top = padding.top + 6.0;
    return CustomAppBar(
      child: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
             Container(
                    color: Colors.transparent,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding:EdgeInsets.fromLTRB(15, top, 0,0),
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
            Container(
                 margin: EdgeInsets.fromLTRB(10,top, 0, 0),
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
           Container(
                color: Colors.transparent,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding:EdgeInsets.fromLTRB(10, top, 0,0),
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
                       width: MediaQuery.of(context).size.width - 62,
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
                         indicator: BoxDecoration(
                            image: DecorationImage(
                              image: ExactAssetImage("images/icon_line.png",scale: 3),
                              alignment: Alignment.bottomCenter,
                            ),
                         ),
                         indicatorWeight: 1.00,
                         indicatorSize: TabBarIndicatorSize.label,
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
                       child: GestureDetector(
                          //TODO behavior, 什么意思
                          behavior: HitTestBehavior.deferToChild,
                          child: Image.
                          asset(
                            "images/caidan.png",
                            width: 30,
                            height: 30,
                            fit: BoxFit.cover,
                          ),
                         onTap: (){
                            Fluttertoast.showToast(msg: "菜单被点击了");
                            showDialog<Null>(
                                context: context, //BuildContext对象
                                builder: (BuildContext context) {
                                  return MenuDialog(
                                    _tabsLists
                                  );
                            });
                         },
                       )
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
              _tabsLists.add(_tabTitleLists[i].flxmc);
            }
        });
    });
  }
  //顶部导航栏监听事件
  _onTabChanged() {
    Fluttertoast.showToast(msg: "导航栏 0");
    if(_tabController.indexIsChanging){
      if(this.mounted){  // 判断组建是否被挂载
        setState(() {
          switch(_tabController.index){
            case 0:{
              Fluttertoast.showToast(msg: "导航栏 0");
            }break;
          }
        });
      }
    }
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
  GlobalKey<EasyRefreshState> _easyRefreshKey = new GlobalKey();
  GlobalKey<EasyRefreshState> _headerKey = GlobalKey();

  GlobalKey<EasyRefreshState> _footerKey = GlobalKey();
  List<FavouriteReturndataZx> _likeList = new List();
  String ITEM_TYPE_ONE = "1";
  String ITEM_TYPE_TWO = "2";
  String ITEM_TYPE_THREE = "3";
  String ITEM_TYPE_FOURE = "4";
  String _pageSize = "10";
  int _pageNum = 1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData("10","1");
  }

  Future<Null> _getData (String _pageSize,String _pageNum) async{
    _likeList.clear();
    if(widget.flxmc == "猜你喜欢"){
      CommonService().getLikeListData((FavouriteEntity favouriteEntity){
        setState(() {
          _likeList = favouriteEntity.returnData.zxs;

        });
      },_pageSize , _pageNum);
      print(widget.flxmc);
    }else{
      CommonService().getNewsListData((FavouriteEntity favouriteEntity){
        setState(() {
          _likeList = favouriteEntity.returnData.zxs;
        });
      },widget.flxbh,_pageNum, _pageSize);
      print(widget.flxmc);
    }
  }

  Future<Null> _getMoreData(String _pageSize,String _pageNum) async{
    if(widget.flxmc == "猜你喜欢"){
      CommonService().getLikeListData((FavouriteEntity favouriteEntity){
        setState(() {
          _likeList.addAll(favouriteEntity.returnData.zxs);
        });
      },_pageSize , _pageNum);
    }else{
      CommonService().getNewsListData((FavouriteEntity favouriteEntity){
        setState(() {
          _likeList.addAll(favouriteEntity.returnData.zxs);
        });
      },widget.flxbh,_pageSize , _pageNum);
    }
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
              height: 10,
              color: Color.fromRGBO(238, 242, 248, 1),
            );
          },
          itemCount: _likeList.length
      ),
      onRefresh: () async{
        _getData("10","1");
      },
      loadMore: () async{
        _pageNum++;
        print("页数：" + _pageNum.toString());
        _getMoreData(_pageSize,_pageNum.toString());
      },
    );
  }


  Widget _renderItem(BuildContext context, int index) {
    var itemTypeStr = _likeList[index].fmmblx;
    print("item" + itemTypeStr);
    if(itemTypeStr == null || itemTypeStr == ""){
       return Container(
       );
    }
    if(itemTypeStr == "10"){
      return Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: _likeList[index].fmtp.length <= 0  ? AssetImage("") : AssetImage(_likeList[index].fmtp[0].fmtplj + _likeList[index].fmtp[0].fmtpfwdmc),
              fit: BoxFit.cover
            ),
            borderRadius: BorderRadius.circular(2) ,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(12, 10, 0, 0),
                child: Text(_likeList[index].bt,style: TextStyle(fontSize:  16)),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(12, 8, 0, 0),
                child: Text(_likeList[index].fbr,style: TextStyle(fontSize:  14)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(12, 8, 0, 8),
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      "images/zxzd.png",
                      width: 16,
                      height: 16,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      child: Text("置顶"),
                      padding: EdgeInsets.fromLTRB(4, 0, 0, 0)
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(17, 0, 0, 0),
                      child: Text(_likeList[index].fbsj),
                    ),
                  ],
                )
              )
            ],
          )
      );
    }else if(itemTypeStr == "12"){
      return Container(
          height: 102,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5) ,
          ),
          child: Row(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width - 100,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(12, 10, 0, 25),
                      child: Text(_likeList[index].bt,style: TextStyle(fontSize: 14,color: Colors.black)),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                          child: Image.asset(
                            "images/zxzd.png",
                            width: 16,
                            height: 16,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                            child: Text("置顶"),
                            padding: EdgeInsets.fromLTRB(4, 0, 0, 0)
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                          child: Text(_likeList[index].fbr),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(27, 0, 0, 0),
                          child: Text(_likeList[index].fbsj),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Image.
              network(
                _likeList[index].fmtp[0].fmtplj + _likeList[index].fmtp[0].fmtpfwdmc,
                width: 91,
                height: 75,
                fit: BoxFit.cover,
              )
            ],
          )
      );
    }else if(itemTypeStr == "13"){
      return Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5) ,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12, 10, 0, 10),
                child: Text(_likeList[index].bt,style: TextStyle(fontSize: 14,color: Colors.black)),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(12, 0, 12, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.
                    network(
                      _likeList[index].fmtp[0].fmtplj + _likeList[index].fmtp[0].fmtpfwdmc,
                      width: 125,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                    Image.
                    network(
                      _likeList[index].fmtp[1].fmtplj + _likeList[index].fmtp[1].fmtpfwdmc,
                      width: 125,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                    Image.
                    network(
                      _likeList[index].fmtp[2].fmtplj + _likeList[index].fmtp[2].fmtpfwdmc,
                      width: 125,
                      height: 80,
                      fit: BoxFit.cover,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                      child: Image.asset(
                        "images/zxzd.png",
                        width: 16,
                        height: 16,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                        child: Text("置顶"),
                        padding: EdgeInsets.fromLTRB(4, 0, 0, 0)
                    ),
                  ],
                ),
              )
            ],
          )
      );
    }else{
      return Container(
          height: 102,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5) ,
          ),
          child: Row(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width - 100,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(12, 10, 0, 25),
                      child: Text(_likeList[index].bt,style: TextStyle(fontSize: 14,color: Colors.black)),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                          child: Image.asset(
                            "images/zxzd.png",
                            width: 16,
                            height: 16,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                            child: Text("置顶"),
                            padding: EdgeInsets.fromLTRB(4, 0, 0, 0)
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                          child: Text(_likeList[index].fbr),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(27, 0, 0, 0),
                          child: Text(_likeList[index].fbsj),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Image.
              network(
                _likeList[index].fmtp[0].fmtplj + _likeList[index].fmtp[0].fmtpfwdmc,
                width: 91,
                height: 75,
                fit: BoxFit.cover,
              )
            ],
          )
      );
    }
  }
}