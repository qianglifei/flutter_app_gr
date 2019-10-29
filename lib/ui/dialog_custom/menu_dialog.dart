import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MenuDialog extends StatefulWidget{
  @override
  MenuDialogState createState() {
    // TODO: implement createState
    return MenuDialogState();
  }
}

class MenuDialogState extends State<MenuDialog>{

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
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Align(
                    alignment: AlignmentDirectional.topCenter,
                    child: Text("标签",style: TextStyle(fontSize: 20)),
                  ),
                ),
                Positioned(
                  top: 45,
                  left: 90,
                  child: Text("(拖拽进行排序)",style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey
                  )),
                ),
                Align(
                  alignment: AlignmentDirectional.bottomCenter,
                  child: Text("完成",style: TextStyle(fontSize: 22,color: Colors.blue))
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}

