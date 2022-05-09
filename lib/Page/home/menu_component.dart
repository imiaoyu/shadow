import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shadow/Page/tool/swatches.dart';
import 'package:shadow/Utils/ColorUtil.dart';
import 'package:path/path.dart' as p;

class Menu_Component extends StatelessWidget {
  final MenuViewModel data;

  const Menu_Component({ Key? key, required this.data}) : super(key: key);
  // const Menu_Component({ Key? key}) : super(key: key);




  Widget build(BuildContext context) {


    Color color=ColorUtil("#FF8B8B8B");

    return Container(
        // height: 150,
        width: 50,
        // color: Colors.red,
        // margin: EdgeInsets.fromLTRB(25, 10, 25, 15),
        // padding: EdgeInsets.only(left: 20, top: 20),
        // decoration: new BoxDecoration(
        //   // color: color, // 底色
        //   borderRadius: BorderRadius.circular(8),
        // ),
        child: Column(
          children: <Widget>[
            //两行
            // Expanded(
            //     child: SizedBox(
            //       height: 50,
            //       child:  ListView.builder(
            //           scrollDirection: Axis.horizontal,
            //           itemCount: 1,
            //           itemBuilder: (context,i){
            //             return Menu_View();
            //           }
            //       ),
            //     )
            // ),


            Container(
              // color: Colors.red,
              child: SingleChildScrollView(
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  verticalDirection: VerticalDirection.down,
                    runSpacing: 5,
                    spacing: 25,
                    children: this.data.data.map((Menu) {
                      return  InkWell(
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: CachedNetworkImage(
                                    // imageList[index]["url"],
                                    imageUrl:  Menu.menuImage,
                                    // placeholder: (context, url) => CircularProgressIndicator(),
                                    errorWidget: (context, url, error) => Icon(Icons.error),
                                    fit: BoxFit.fill,
                                  )
                              ),
                            ),
                            Text(Menu.menuName,style: TextStyle(color: color,fontSize: 12),)
                          ],
                        ),
                        onTap: () =>Navigator.push(
                          context,
                          new MaterialPageRoute(builder: (context) => new Swatches()),
                        ),
                      );
                    }).toList(),

                ),
              ),
            )

            // Row(
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
            // )


          ],
        )
    );
  }

  Widget Menu_View() {

    Color color=ColorUtil("#FF8B8B8B");

    Map Menu = this.data.data as Map;



    print(Menu);

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