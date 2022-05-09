import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shadow/Page/video_player/video_player_page.dart';
import 'package:shadow/Utils/ColorUtil.dart';
import 'package:path/path.dart' as p;
import 'package:shadow/Widget/video_player/video_player_page.dart';

class Video_Content_Component extends StatelessWidget {
  // final MenuViewModel data;

  // const Video_Content_Component({ Key? key, required this.data}) : super(key: key);
  // const Video_Content_Component({ Key? key}) : super(key: key);

  List listData=[
    {
      "title": 'Candy Shop',
      "author": 'Mohamed Chahin',
      "imageUrl": 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F016d72577880180000018c1bc3ee57.jpg%401280w_1l_2o_100sh.jpg&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1651067462&t=456dcae12e927b713fdcc74827597097',
    },
    {
      "title": 'Childhood in a picture',
      "author": 'Google',
      "imageUrl": 'https://img2.baidu.com/it/u=370806777,3626674497&fm=253&fmt=auto&app=138&f=JPEG?w=715&h=500',
    },
    {
      "title": 'Candy Shop',
      "author": 'Mohamed Chahin',
      "imageUrl": 'https://img0.baidu.com/it/u=405239708,2740297435&fm=253&fmt=auto&app=138&f=JPEG?w=750&h=500',
    },
    {
      "title": 'Childhood in a picture',
      "author": 'Google',
      "imageUrl": 'https://img0.baidu.com/it/u=638945922,1550960210&fm=253&fmt=auto&app=138&f=JPEG?w=609&h=500',
    },
  ];




  Widget build(BuildContext context) {

    Color color=ColorUtil("#FF8B8B8B");
    Color color1=ColorUtil("#FFEE4D51");

    return Container(
        // height: 500,
        // width: 50,
        // color: Colors.red,
        margin: EdgeInsets.fromLTRB(20, 10, 20, 15),
        // padding: EdgeInsets.only(left: 20, top: 20),
        // decoration: new BoxDecoration(
        //   color: color, // 底色
        //   borderRadius: BorderRadius.circular(20),
        // ),
        child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          //注意
          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing:15.0 ,   //水平子 Widget 之间间距
            mainAxisSpacing: 15.0,    //垂直子 Widget 之间间距
            crossAxisCount: 2,  //一行的 Widget 数量
            // childAspectRatio: 2 / 5,
          ),
          itemCount: listData.length,
          itemBuilder:this._getListData,
        )
    );
  }

  Widget _getListData (context,index) {

    Color color=ColorUtil("#FF8B8B8B");
    Color color1=ColorUtil("#FF737373");
    Color color2=ColorUtil("#FF282828");
    Color color3=ColorUtil("#FFBBBBBB");


    return Container(
      // height: 50,
      // color: Colors.red,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          InkWell(
            onTap: (){
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new VideoPlayerPage()),
                // new MaterialPageRoute(builder: (context) => new a()),
              );
            },
            child: Container(
                decoration: BoxDecoration(
                  // color: Colors.black,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10),),
                  // border: Border.all(
                  //     color:Color.fromRGBO(233, 233,233, 0.9),
                  //     width: 1
                  // )
                ),
                height: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: CachedNetworkImage(
                    width: 800,
                    // imageList[index]["url"],
                    imageUrl:  listData[index]['imageUrl'],
                    // imageUrl:  'https://img2.baidu.com/it/u=932059957,1310459613&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=354',
                    // placeholder: (context, url) => CircularProgressIndicator(),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                    fit: BoxFit.fill,
                  ),
                )
              // color: Colors.black,
            ),
          ),

          Container(
            margin: EdgeInsets.fromLTRB(10,10,10,0),
            child: Text('迷茫|我要找回我自己',style: TextStyle(color:color3,fontSize: 14)),
          ),


          Container(
            margin: EdgeInsets.fromLTRB(10,10,10,0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('发布者',style: TextStyle(color:color1,fontSize: 12)),
                Icon(Icons.more_vert,size: 16,color: color1,)
              ],
            ),
          )

        ],
      ),


      decoration: BoxDecoration(
        color: color2,
          borderRadius: BorderRadius.circular(10),
          // border: Border.all(
          //     color:Color.fromRGBO(233, 233,233, 0.9),
          //     width: 1
          // )
      ),
      // height: 400,  //设置高度没有反应
    );
  }






}

class MenuViewModel {
  ///菜单类
  final List<Menu> data;

  const MenuViewModel({
    required this.data,
  });
}

class Menu {

  /// 名字
  final String menuName;

  /// 图片
  final String menuImage;

  const Menu({
    required this.menuName,
    required this.menuImage,
  });
}