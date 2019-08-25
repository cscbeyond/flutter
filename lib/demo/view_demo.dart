import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridViewBuilderDemo();
  }
}

class GridViewBuilderDemo extends StatelessWidget {
  Widget _gridItemBuilder(BuildContext context, int index) {
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: posts.length,
      itemBuilder: _gridItemBuilder,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          // crossAxisCount: 3,
          maxCrossAxisExtent: 150.0,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0),
    );
  }
}

class GridViewExtentDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child: Text(
          'ITEM1 $index',
          style: TextStyle(fontSize: 18.0, color: Colors.grey),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 150.0, //这个值跟scrollDirection的值关联 -->水平方向最大宽度/竖直方向最大高度
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      // scrollDirection: Axis.horizontal, //滚动方向 垂直/水平
      children: _buildTiles(100),
    );
  }
}

class GridViewCountDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0.0, 0.0),
        child: Text(
          'ITEM1 $index',
          style: TextStyle(fontSize: 18.0, color: Colors.grey),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3, // 一行显示的项目个数
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      // scrollDirection: Axis.horizontal, //滚动方向 垂直/水平
      children: _buildTiles(100),
    );
  }
}

class PageViewBuilderDemo extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          //所有部件会占满整个空间
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(posts[index].author)
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      // pageSnapping: false,
      reverse: true, //视图顺序
      scrollDirection: Axis.horizontal, //滚动的方向
      onPageChanged: (currenPage) => {
        // 页面滚动的回调
        debugPrint('Page:$currenPage')
      },
      controller: PageController(
        initialPage: 1, //页面初始化时显示的页面
        keepPage: false, //是否记住用户切换的页面  现在有疑问 这个true/false并不生效，待解决
        viewportFraction: 0.85, // 视口  1.0为页面占满整个可视区域
      ),
      children: <Widget>[
        Container(
          color: Colors.brown[900],
          alignment: Alignment.center,
          child: Text(
            'ONE',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.black,
          alignment: Alignment.center,
          child: Text(
            'TWO',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.cyan,
          alignment: Alignment.center,
          child: Text(
            'THREE',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
