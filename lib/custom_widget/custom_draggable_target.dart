import 'package:flutter/material.dart';


class CustomDraggableTarget<T> extends StatefulWidget{
  final T data;

  CustomDraggableTarget(String list, {@required this.data,Key key}) : super(key : key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CustomDraggableTargetState(text: data);
  }

}

class _CustomDraggableTargetState<T> extends State<CustomDraggableTarget> {
  var text;
  _CustomDraggableTargetState({@required this.text});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Draggable(
        data: text,
        //仅用于保持样式，可以使用DragTarget作为直接child
        child: Container(
          width: 150.0,
          height: 150.0,
          color: Colors.red[500],
          child: DragTarget(
              onWillAccept: (data){
                print("data = $data onWillAccept");
                return data != null;
              },
              onAccept: (data){
                print("data = $data onAccept");
                setState(() {
                  text = data;
                });
              },
              onLeave: (data){
                print("data = $data onLeave");
              },
              builder: (context,candidateData,rejectedData){
                return Container(
                  width: 50.0,
                  height: 30.0,
                  color: Colors.blue[500],
                  child: Center(
                    child: Text(text),
                  ),
                );
              }
          ),
        ),
        feedback: Container(
          width: 50.0,
          height: 30.0,
          color: Colors.blue[500],
          child: Icon(Icons.feedback),
        )
    );
  }
}