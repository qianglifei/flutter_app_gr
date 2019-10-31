import 'dart:core' as prefix0;
import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_gr/custom_widget/custom_draggable_target.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore: must_be_immutable 不可变的
class MenuDialog extends StatefulWidget{
  List<String> data;
  MenuDialog(this.data);

  @override
  MenuDialogState createState() {
    // TODO: implement createState
    return MenuDialogState(list: data);
  }
}

class MenuDialogState extends State<MenuDialog>{
   List<String> list;
   MenuDialogState({@required this.list});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //创建透明层
    return Material(
      //透明类型
      type: MaterialType.transparency,
      child: new Center(
        child: new SizedBox(
          width: 280.0,
          height:350.0,
          child: Container(
             decoration: ShapeDecoration(
               color: Color(0xffffffff),
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.all(
                   Radius.circular(8.0)
                 )
               )
             ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Align(
                    alignment: AlignmentDirectional.topCenter,
                    child: Text("标签",style: TextStyle(fontSize: 20)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                  child: Text("(拖拽进行排序)",style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey
                  )),
                ),
                Expanded(
                  flex: 1,
                  child: GridView.count(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      //列数
                      crossAxisCount: 3,
                      // item 宽高比
                      childAspectRatio: 2.0,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 6.0,
                      // 默认vertical
                      scrollDirection: Axis.vertical,
                      children: _buildGridChildren(context),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1,
                  color: Color.fromRGBO(238, 242, 248, 1),
                ),
                GestureDetector(
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(2, 0, 9, 8),
                      child: Text("完成",style: TextStyle(fontSize: 22,color: Colors.blue))
                  ),
                  onTap: (){
                    Navigator.of(context).pop();
                    Fluttertoast.showToast(msg: "点击完成");
                  },
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
  ///生成widget列表
  List<Widget> _buildGridChildren(BuildContext context) {
    final List<Widget> _list = List<Widget>();
    for(int x = 0; x < list.length; x ++){
      _list.add(
        CustomDraggableTarget(list,data: list[x])
      );
    }
    return _list;
  }

}

