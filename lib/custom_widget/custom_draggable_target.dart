import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


class CustomDraggableTarget<T> extends StatefulWidget{
  final T data;
  List<String> list;
  CustomDraggableTarget(this.list ,{@required this.data,Key key}) : super(key : key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CustomDraggableTargetState(list,text: data);
  }

}

class _CustomDraggableTargetState<T> extends State<CustomDraggableTarget> {
  var text;
  // 记录正在移动的数据
  String _movingValue;
  List<String> list;
  _CustomDraggableTargetState(this.list,{@required this.text});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Draggable(
        //数据源，将来传递给DragTarget
        data: text,
        //仅用于保持样式，可以使用DragTarget作为直接child
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(234, 242, 253, 1),
            border: Border.all(
              width: 1.0,
              color: Color.fromRGBO(172, 172, 195, 1),
            ),
            borderRadius: BorderRadius.circular(4),
            //阴影
            boxShadow: [BoxShadow(
                color:Colors.black12,
                offset: Offset(2.0,2.0),
                blurRadius: 4.0
              )
            ]
          ),
          child: DragTarget(
              onWillAccept: (moveData){
                print('=== onWillAccept: $moveData ==> $text');
                var accept = moveData != null;
                if (accept) {
                  exchangeItem(moveData, text, false);
                }
                return accept;
              },
              onAccept: (moveData){
                print('=== onAccept: $moveData ==> $text');
                exchangeItem(moveData, text, true);
              },
              onLeave: (moveData){
                print('=== onLeave: $moveData ==> $text');
              },
              builder: (context,candidateData,rejectedData){
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3)
                  ),
                  child: Center(
                    child: Text(text,style: TextStyle(fontSize: 15,color: Color.fromRGBO(98, 132, 182, 1))),
                  ),
                );
              }
          ),
        ),
        childWhenDragging: null,
        //是拖动时跟随手指移动的Widget
        feedback: Container(
          width: 100,
          height: 50,
          child: Center(
            child: Text(text,style:TextStyle(fontSize: 16,color: Colors.white)),
          ),
          decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(3),
                //阴影
                boxShadow: [BoxShadow(
                    color:Colors.black54,
                    offset: Offset(2.0,2.0),
                    blurRadius: 4.0
                )
               ]
          ),
        ),
        onDragStarted: (){
          setState(() {
            _movingValue = text;//记录开始拖拽的数据
          });
        },
        onDraggableCanceled: (Velocity velocity, Offset offset){
          setState(() {
            _movingValue = null;//清空标记进行重绘
          });
        },
    );
  }

  // 重新排序
  void exchangeItem(moveData, toData, onAccept) {
    setState(() {
      var toIndex = list.indexOf(toData);
      list.remove(moveData);
      list.insert(toIndex, moveData);
      if (onAccept) {
        _movingValue = null;
      }
      for(int index = 0 ; index < list.length ; index ++){
        print(list);
      }
    });
  }
}