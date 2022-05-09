import 'package:flutter/material.dart';
import 'package:shadow/Utils/ColorUtil.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    List tabs=[{"title": "修改信息"},{"title": "推送通知"},{"title": "下载设置"},{"title": "清理占用空间","number":"12.8MB"},{"title": "版本","number":"1.2.15"},{"title": "关于"}];

    Color color=ColorUtil("#FF131313");
    Color color1=ColorUtil("#FF282828");
    Color textcolor=ColorUtil("#FF646464");

    return Scaffold(
      body: Container(
          padding: EdgeInsets.fromLTRB(5, 40, 0, 0),
          color: color,
          child: Column(
            children: <Widget>[

             Container(
               margin: EdgeInsets.only(bottom: 40),
               child:  Row(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: <Widget>[

                   IconButton(
                     icon:Icon(Icons.arrow_back_outlined,size: 20,color: Colors.white), onPressed: () { Navigator.pop(context); },
                   ),

                   Expanded(
                       child: Container(
                         margin: EdgeInsets.only(left: 20),
                         child: Text(
                           '设置',
                           style: TextStyle(
                               color: Colors.white,
                               fontSize: 18
                           ),
                         ),
                       )
                   )
                 ],
               ),
             ),

          Column(
            children: List<Widget>.from(tabs.asMap().keys.map((i) {
              return
                // Text(tabs[i]['title'].toString());
                InkWell(
                  child: Container(
                    // height: 100,
                    margin: EdgeInsets.only(bottom: 50),
                    padding: EdgeInsets.only(left:20,right:20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment,
                      children: <Widget>[
                        Text(tabs[i]['title'].toString(),style: TextStyle(fontSize: 14,color: Colors.white)),
                        tabs[i]['number'] == null ?
                          Icon(
                          Icons.keyboard_arrow_right_sharp,
                          color: ColorUtil("#FF5A5A5A"),
                          size: 25,
                        ) :
                        Text(tabs[i]['number'].toString(),style: TextStyle(fontSize: 14,color: ColorUtil("#FF5A5A5A"))),
                      ],
                    ),
                  ),
                  onTap: (){
                  },
                );
            })).toList(),
          )

            ],
          )
      ),
    );
  }
}
