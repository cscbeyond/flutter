import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   image: DecorationImage(
      //     image: NetworkImage('https://chensc.club/static/assets/images/avatar.jpeg'),
      //     alignment: Alignment.topCenter
      //   )
      // ),
      color: Colors.grey[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(
              Icons.pool,
              size: 32.0,
              color: Colors.white,
            ),
            // color: Color.fromRGBO(3, 54, 255, 1.0),
            // padding: EdgeInsets.only(left: 24.0,right: 8.0),
            padding: EdgeInsets.all(24.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                border: Border(
                  top: BorderSide(
                      color: Colors.indigoAccent[100],
                      width: 3.0,
                      style: BorderStyle.solid),
                  bottom: BorderSide(
                      color: Colors.indigoAccent[100],
                      width: 3.0,
                      style: BorderStyle.solid),
                  left: BorderSide(
                      color: Colors.indigoAccent[100],
                      width: 3.0,
                      style: BorderStyle.solid),
                  right: BorderSide(
                      color: Colors.indigoAccent[100],
                      width: 3.0,
                      style: BorderStyle.solid),
                ),
                // borderRadius: BorderRadius.circular(30.0)
                // borderRadius:
                //     BorderRadius.only(
                //       topLeft: Radius.circular(15.0),
                //       bottomLeft: Radius.circular(15.0),
                //       ),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(6.0, 7.0),
                      color: Color.fromRGBO(16, 20, 188, 1.0),
                      blurRadius: 1.0,
                      spreadRadius: -6.0 //正负都行
                      ),
                ],
                shape: BoxShape.circle,
                // gradient: RadialGradient(colors:[
                //   Color.fromRGBO(7, 102, 255, 1.0),
                //   Color.fromRGBO(3, 28, 128, 1.0),
                // ])
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 28, 128, 1.0),
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          )
        ],
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );
  final String _author = '李白';
  final String _title = '将近酒';
  @override
  Widget build(BuildContext context) {
    return Text(
      '《 $_title 》--- $_author。  君不见 1.黄河之水天上来 奔流到海不复回2.黄河之水天上来 奔流到海不复回.3.黄河之水天上来 奔流到海不复回',
      textAlign: TextAlign.center,
      style: _textStyle,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class RichDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: 'geekchen',
          style: TextStyle(
            color: Colors.deepPurpleAccent,
            fontSize: 16.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w100,
          ),
          children: [
            TextSpan(
                text: '.net',
                style: TextStyle(fontSize: 24.0, color: Colors.grey))
          ]),
    );
  }
}
