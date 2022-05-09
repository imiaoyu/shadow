import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shadow/Utils/ColorUtil.dart';

class New_Component extends StatelessWidget {
  // final RecommendedViewModel data;

  // const New_Component({ Key? key, required this.data}) : super(key: key);
  const New_Component({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Color color=ColorUtil("#FF8B8B8B");
    Color color1=ColorUtil("#FF737373");
    Color color2=ColorUtil("#FF282828");
    Color color3=ColorUtil("#FFBBBBBB");

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
                  Text('本周新书',style: TextStyle(color: Colors.white,fontSize: 18),),
                  Text('每周一早上9点更新',style: TextStyle(color: color,fontSize: 12),)
                ],
              ),
            ),

            Container(
                decoration: new BoxDecoration(
                  color: color2, // 底色
                  borderRadius: BorderRadius.circular(20),
                ),
              height: 150,
              // color: color2,.
              margin: EdgeInsets.fromLTRB(20, 15, 20, 15),
              child: Row(
                children: <Widget>[

                  Container(
                    height: 150,
                    width: 150,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: CachedNetworkImage(
                      // imageList[index]["url"],
                      imageUrl: 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fdesignjiaoshi.com%2Fwp-content%2Fuploads%2F2019%2F10%2FPreview-image-13-for-Square-Book-Mock-up-2-1024x684.jpg&refer=http%3A%2F%2Fdesignjiaoshi.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1650890936&t=30b7ee7b9b1b70e7f36d209fe217dc23',
                      // placeholder: (context, url) => CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                      fit: BoxFit.fill,
                    )
              ),
                  ),

                  Container(
                    margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('你的努力要配得上...',style: TextStyle(color:Colors.white,fontSize: 16,height: 2.0,),),
                          Text('你也陷入了"低等勤奋"而...',style: TextStyle(color:color1,fontSize: 12,height: 2.0,),),
                          Text('10,380人想听',style: TextStyle(color:color3,fontSize: 12,height: 2.0, ),),
                        ],
                      ),
                  ),
                  )


                ],
              )
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