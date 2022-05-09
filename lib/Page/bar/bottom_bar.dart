import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:shadow/Page/home/home.dart';
import 'package:shadow/Page/my/my.dart';
import 'package:shadow/Page/other/other_top_bar.dart';
import 'package:shadow/Utils/ColorUtil.dart';
/// This Widget is the main application widget.
class Bottom_Bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyNavigationBar ();
  }
}

class MyNavigationBar extends StatefulWidget {
  MyNavigationBar ({Key ? key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar > {
  int _currentPage = 0;
  final _pageController = PageController();

  int currentIndex = 0;

  void changePage(int index) {
    // controller.jumpToPage(index);
    setState(() {
      currentIndex = index;
      print(currentIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    Color color=ColorUtil("#FF282828");
    Color color1=ColorUtil("#FFFEFEFE");
    Color color2=ColorUtil("#FF5E5E5E");


    return Scaffold(
      body: IndexedStack(
        children: <Widget>[
          Home(),
          OtherTopBar(),
          My(),
        ],
        index:currentIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(

        backgroundColor: color,
        //底部导航栏的创建需要对应的功能标签作为子项，这里我就写了3个，每个子项包含一个图标和一个title。
        items: [
          BottomNavigationBarItem(
            // backgroundColor: Color.fromARGB(255, 165, 277, 206),
            icon: Icon(
              IconlyBold.home,
              color: color2,
              size: 35,
            ),
            activeIcon: Icon(
              IconlyBold.home,
              color: color1,
              size: 35,
            ),
            title: new Container(),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                IconlyBold.chart,
                color: color2,
                size: 35,
              ),
              activeIcon: Icon(
                IconlyBold.chart,
                color: color1,
                size: 35,
              ),
              title: new Container()),
          BottomNavigationBarItem(
              icon: Icon(
                IconlyBold.profile,
                color: color2,
                size: 35,
              ),
              activeIcon: Icon(
                IconlyBold.profile,
                color: color1,
                size: 35,
              ),
              title: new Container()),
        ],
        //这是底部导航栏自带的位标属性，表示底部导航栏当前处于哪个导航标签。给他一个初始值0，也就是默认第一个标签页面。
        currentIndex: currentIndex,
        //这是点击属性，会执行带有一个int值的回调函数，这个int值是系统自动返回的你点击的那个标签的位标
        onTap: (int i) {
          //进行状态更新，将系统返回的你点击的标签位标赋予当前位标属性，告诉系统当前要显示的导航标签被用户改变了。
          setState(() {
            currentIndex = i;
          });
        },
      ),
    );
  }

}
