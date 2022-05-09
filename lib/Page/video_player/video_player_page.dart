// import 'package:better_player/better_player.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shadow/Page/home/mock_data.dart';
import 'package:shadow/Page/home/video_content_component.dart';
import 'package:shadow/Utils/ColorUtil.dart';
import 'package:shadow/Utils/CusBehaviorUtil.dart';
import 'package:shadow/Utils/VideoPlayerUtils/video_player.dart';
import 'package:shadow/Utils/VideoPlayerUtils/video_player_utils.dart';
import 'package:shadow/Widget/video_player/video_player_page.dart';
import 'package:flutter/material.dart';
import 'video_comment_page.dart';
import 'video_recommend_page.dart';
import 'dart:ui';
// import 'package:better_player/better_player.dart';
 class VideoPlayerPage extends StatefulWidget  {

  const VideoPlayerPage({Key? key}) : super(key: key);


   @override
   VideoPlayer createState() => VideoPlayer();

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: VideoPlayer(),
  //   );
  // }
}

class VideoPlayer extends State<VideoPlayerPage>{


  Color color=ColorUtil("#FF131313");
  Color color1=ColorUtil("#FF282828");
  Color textcolor=ColorUtil("#FF646464");


  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   VideoPlayerUtils.removePositionListener(this);
  //   print('释放资源02');
  //   VideoPlayerUtils.dispose();
  // }

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   VideoPlayerUtils.removeInitializedListener(this);
  //   VideoPlayerUtils.removeStatusListener(this);
  //   VideoPlayerUtils.removePositionListener(this);
  //   print('释放资源02');
  //   VideoPlayerUtils.dispose();
  //   super.dispose();
  // }


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Container(
          color: Colors.black,
          // foregroundColor: ColorUtil("#FF121212"),
          // shadowColor: ColorUtil("#FF121212"),
        ),
        preferredSize: Size.fromHeight(-25.0),),
      body: Container(
          color: color,
          child:
          // VideoPlayerPages(),

          Column(
            children: <Widget>[
              // Container(
              //   height: 45,
              //   color: Colors.black,
              // ),
              // VideoPlayerPages(),
              DefaultPlayer(),
              Expanded(
                flex: 1,
                child: TabBarPage(),
              )
            ],
          )

      ),
    );
  }
}

class TabBarPage extends StatelessWidget  {

  Color color=ColorUtil("#FF8B8B8B");
  Color color1=ColorUtil("#FF686868");
  Color color2=ColorUtil("#FF282828");
  Color color3=ColorUtil("#FFBBBBBB");
  Color color4=ColorUtil("#FF131313");
  Color color5=ColorUtil("#FF1B1B1B");


  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: DefaultTabController(
          length: 3,
          child: SizedBox(
            // height: 500,
            child: Scaffold(
              backgroundColor: color4,
              body:DefaultTabController(
                length: 2,
                child: Column(
                  children: <Widget>[
                    Container(

                      height: 45,
                      // color: color2,
                      decoration: BoxDecoration(
                        color: color2,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
                      padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                      child: TabBar(
                        unselectedLabelColor: color1,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicator:BoxDecoration(
                          color: color1,
                          borderRadius:BorderRadius.circular(8),
                        ),
                        tabs: [
                          Tab(
                            child:Container(
                              decoration:BoxDecoration(
                                borderRadius:BorderRadius.circular(8),
                                // border:Border.all(color:Colors.redAccent,
                                //   width:1,
                                // ),
                              ),
                              child:Align(
                                alignment:Alignment.center,
                                child:Text("简介"),
                              ),
                            ),
                          ),
                          Tab(
                            child:Container(
                              decoration:BoxDecoration(
                                borderRadius:BorderRadius.circular(8),
                                // border:Border.all(color:Colors.redAccent,
                                //   width:1,
                                // ),
                              ),
                              child:Align(
                                alignment:Alignment.center,
                                child:Text("评论"),
                              ),
                            ),
                          ),
                          // Add Tabs here
                        ],
                      ),
                    ),


                    Expanded(
                      flex: 1,
                      child: TabBarView(
                        children: <Widget>[
                          ListViewContnet(),
                          Container(
                            // decoration: BoxDecoration(
                            //   color: color5,
                            //   borderRadius: BorderRadius.circular(8),
                            // ),
                            child: Video_Comment_Page(),
                          )
                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),
          )
      ),
    );
  }

}

class ListViewContnet extends StatelessWidget {
  // const ListViewContnet({Key ? key}) : super(key: key);

  Color color=ColorUtil("#FF686868");
  Color color1=ColorUtil("#FF2B2B2B");
  Color color2=ColorUtil("#FF8B8B8B");
  Color color3=ColorUtil("#FF6D6D6D");
  Color color4=ColorUtil("#FF131313");

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
      // color: Colors.red,
      child: MediaQuery.removePadding(
        removeTop: true,
        context: context,
        child: ScrollConfiguration(
        behavior: CusBehavior(),
          child:   ListView(
            children: <Widget>[
              // ListTile(title: Text('TITLE')),
              Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              height: 40,
                              width: 40,
                              margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                              child: CircleAvatar(
                                radius: 100,
                                backgroundImage: NetworkImage("https://tva1.sinaimg.cn/large/006y8mN6gy1g7aa03bmfpj3069069mx8.jpg"),
                                child: Container(
                                    alignment: Alignment(0, .5),
                                    width: 200,
                                    height: 200,
                                    child: Text("ID")
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  // margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                                  child: Text('ID为666',style: TextStyle(fontSize: 15,color: Colors.white),),
                                ),
                                Container(
                                  // margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                                  child: Text('此插件开发正在进行中会遇到每个版本的重大更改',style: TextStyle(fontSize: 12,color: color),),
                                )
                              ],
                            )
                          ],
                        ),
                        Container(
                          // margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                          child: Icon(Icons.keyboard_arrow_right,color: color,),
                        ),
                      ],
                    ),
                  ),


                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Text('介绍',style: TextStyle(fontSize: 16,color: Colors.white),),
                  ),
                  Container(
                    child: Text('这个插件是基于Chewie的。Chewie 是一个很棒的插件，在很多情况下都能很好地工作。Better Player 是 Chewie 中引入的想法的延续。更好的播放器修复常见错误，添加更多配置选项并解决典型用例。',style: TextStyle(fontSize: 14,color: color),),
                  ),

                  Container(
                    margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
                    decoration: BoxDecoration(
                      // color: color1,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                            icon: FaIcon(FontAwesomeIcons.solidHeart,color: color2,),
                            onPressed: () { print("Pressed"); }
                        ),
                        IconButton(
                          // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                            icon: FaIcon(FontAwesomeIcons.solidThumbsUp,color: color2,),
                            onPressed: () { print("Pressed"); }
                        ),
                        IconButton(
                          // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                            icon: FaIcon(FontAwesomeIcons.shareNodes,color: color2,),
                            onPressed: () { print("Pressed"); }
                        ),
                        IconButton(
                          // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                            icon: FaIcon(FontAwesomeIcons.solidCircleDown,color: color2,),
                            onPressed: () { print("Pressed"); }
                        ),

                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Text('推荐',style: TextStyle(fontSize: 16,color: Colors.white),),
                  ),
                  Video_Component_Page(),
                ],
              ),
              // ListTile(title: Text('TITLE')),
            ],
          ),
        )
      )


    );
  }
}


