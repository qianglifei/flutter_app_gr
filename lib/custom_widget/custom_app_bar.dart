import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget{
  final Widget child;
  CustomAppBar({@required this.child}) : assert(child != null);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CustomAppBarState();
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => new Size.fromHeight(50.0);

}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return widget.child;
  }
}