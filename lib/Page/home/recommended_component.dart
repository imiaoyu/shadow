import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shadow/Utils/ColorUtil.dart';

class Recommended_Component extends StatelessWidget {
  final RecommendedViewModel data;

  const Recommended_Component({ Key? key, required this.data}) : super(key: key);
  // const Recommended_Component({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Color color=ColorUtil("#FF8B8B8B");
    Color color1=ColorUtil("#FFEE4D51");

    return Container(
      // height: 100,
        width: 50,
        // color: Colors.red,
        // margin: EdgeInsets.fromLTRB(25, 15, 25, 15),
        // padding: EdgeInsets.only(left: 20, top: 20),
        // decoration: new BoxDecoration(
        //   // color: color, // 底色
        //   borderRadius: BorderRadius.circular(8),
        // ),
        child: Column(
          children: <Widget>[


           Container(
               margin: EdgeInsets.fromLTRB(25, 15, 25, 0),
             child:  Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children:  <Widget>[
                 Text('商业财经',style: TextStyle(color: Colors.white,fontSize: 18),),
                 Text('查看全部',style: TextStyle(color: color1,fontSize: 12),)
               ],
             ),
           ),

           Container(
             height: 200,
             // padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
             child: ListView(
               scrollDirection: Axis.horizontal,
               children: <Widget>[
                 Container(
                   margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                   child: Row(
                     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: this.data.recommended.map((Menu) {
                       return  Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: <Widget>[
                           Container(
                             height: 150,
                             width: 150,
                             margin: EdgeInsets.fromLTRB(10, 15, 10, 10),
                             // padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                             child: ClipRRect(
                                 borderRadius: BorderRadius.circular(10),
                                 child: CachedNetworkImage(
                               // imageList[index]["url"],
                               imageUrl:  Menu.menuImage,
                               // placeholder: (context, url) => CircularProgressIndicator(),
                               errorWidget: (context, url, error) => Icon(Icons.error),
                               fit: BoxFit.fill,
                             )                             ),
                           ),
                           Container(
                             margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                             child: Text(Menu.menuName,style: TextStyle(color:color,fontSize: 12),),
                           )
                         ],
                       );
                     }).toList(),
                   ),
                 )
               ],
             ),
           )


          ],
        )
    );
  }

  Widget Menu_View() {

    Color color=ColorUtil("#FF8B8B8B");



    return Container();

    //   Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceAround,
    //   children: this.data.data.map((Menu) {
    //     return  Column(
    //       children: <Widget>[
    //         Container(
    //           height: 50,
    //           width: 50,
    //           margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
    //           child: ClipRRect(
    //               borderRadius: BorderRadius.circular(20),
    //               child: Image.network(
    //                 // imageList[index]["url"],
    //                 Menu.menuImage,
    //                 fit: BoxFit.fill,
    //               )
    //           ),
    //         ),
    //         Text(Menu.menuName,style: TextStyle(color: color,fontSize: 12),)
    //       ],
    //     );
    //   }).toList(),
    // );


  }
}

class RecommendedViewModel {
  ///菜单类
  final List<a> recommended;

  const RecommendedViewModel({
    required this.recommended,
  });
}

class a {

  /// 名字
  final String menuName;

  /// 图片
  final String menuImage;

  const a({
    required this.menuName,
    required this.menuImage,
  });
}