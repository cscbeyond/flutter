import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      // ---Row也可以   沿用了css的flex布局
      // mainAxisAlignment: MainAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.end,
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center, // 竖直方向的排列顺序
      children: <Widget>[ConstrainedBoxDemo()],
    );
  }
}

// 带限制的盒子
class ConstrainedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: BoxConstraints(minHeight: 200.0, maxWidth: 200.0),
        child: Container(
          color: Color.fromRGBO(3, 53, 255, 1.0),
        ));
  }
}

// 宽高比
class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16.0 / 9.0,
      child: Container(
        color: Color.fromRGBO(3, 54, 255, 1.0),
      ),
    );
  }
}

// 一摞小部件
class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.topLeft, children: <Widget>[
      SizedBox(
        width: 200.0,
        height: 300.0,
        child: Container(
          // alignment: Alignment(-1.0,0.8),
          // alignment: Alignment.topCenter,
          // alignment: Alignment.topLeft,
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              borderRadius: BorderRadius.circular(8.0)),
        ),
      ),
      SizedBox(height: 42.0),
      SizedBox(
        width: 100.0,
        height: 100.0,
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(3, 54, 255, 1.0),
            // borderRadius: BorderRadius.circular(8.0)),
            shape: BoxShape.circle,
            gradient: RadialGradient(colors: [
              Color.fromRGBO(7, 102, 255, 1.0),
              Color.fromRGBO(1, 54, 255, 1.0),
            ]),
          ),
          child: Icon(
            Icons.brightness_3,
            color: Colors.white,
            size: 32.0,
          ),
        ),
      ),
      Positioned(
        right: 20.0,
        top: 20.0,
        child: Icon(
          Icons.ac_unit,
          color: Colors.white,
          size: 32.0,
        ),
      ),
      Positioned(
        right: 10.0,
        top: 10.0,
        child: Icon(
          Icons.ac_unit,
          color: Colors.white,
          size: 32.0,
        ),
      ),
      Positioned(
        right: 30.0,
        top: 30.0,
        child: Icon(
          Icons.ac_unit,
          color: Colors.white,
          size: 32.0,
        ),
      ),
    ]);
    // IconBadge(Icons.pool),
    // IconBadge(Icons.beach_access,size: 64.0,),
    // IconBadge(Icons.airplanemode_active),;
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;
  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
      width: size + 60.0,
      height: size + 60.0,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}
