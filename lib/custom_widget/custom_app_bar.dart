import 'package:flutter/material.dart';
import 'dart:math' as math;
class CustomAppBar extends StatefulWidget implements PreferredSizeWidget{
  //布局
  final Widget child;
  //背景颜色
  final Color color;
  CustomAppBar({@required this.child,this.color = Colors.red}) : assert(child != null);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CustomAppBarState();
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => new Size.fromHeight(56.0);

}

class _CustomAppBarState extends State<CustomAppBar> {

  @override
  Widget build(BuildContext context) {
    EdgeInsets padding = MediaQuery.of(context).padding;
    // 计算状态栏的高度
    double top = math.max(padding.top,EdgeInsets.zero.top);
    // TODO: implement build
    return widget.child;
  }
}