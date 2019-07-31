import 'package:flutter/material.dart';
import 'package:flutter_app_gr/ui/first_page/first_screen.dart';

import 'consult_page/consult_screen.dart';
import 'mine_page/mine_screen.dart';
import 'service_center/service_center_screen.dart';

///应用页面使用有状态的Widget
class App extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new AppState();
  }

}
///应用页面状态实现类
class AppState extends State<App> {
  //当前选中项的索引
  int _selectedIndex = 0;
  final appBarTitles = ["首页","服务大厅","咨询","我的"];
  int elevation = 4;
  var pages = <Widget>[
    FirstPage(),
    ServiceCenterPage(),
    ConsultPage(),
    MinePage()
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
        child: Scaffold(
          appBar: null,
          body: new IndexedStack(children: pages,index: _selectedIndex),
          bottomNavigationBar: BottomNavigationBar(
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    title: Text("首页")
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.room_service),
                    title: Text("服务大厅")
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.book),
                    title: Text("咨询")
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.assignment_ind),
                    title: Text("我的")
                ),
              ],
            //设置显示模式
            type: BottomNavigationBarType.fixed,
            //当前选中索引
            currentIndex: _selectedIndex,
            //底部导航栏点击处理
            onTap: _onItemTapped,
          ),
        ),
        onWillPop: _onWillPop
    );
  }

  ///选择按下处理，设置当前索引，为index值
  void _onItemTapped(int value) {
    setState(() {
      _selectedIndex = value;
      if(value == 4 || value == 2){
        elevation = 0;
      }else{
        elevation = 4;
      }
    });
  }

  Future<bool> _onWillPop() {
    return showDialog(
        context: null
    );
  }
}