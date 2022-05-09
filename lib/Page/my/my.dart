import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:shadow/Page/my/settings.dart';
import 'package:shadow/Utils/ColorUtil.dart';
import 'package:shadow/Utils/CusBehaviorUtil.dart';
import 'package:styled_widget/styled_widget.dart';

class My extends StatefulWidget {
  const My({Key? key}) : super(key: key);

  @override
  State<My> createState() => _MyState();
}

class _MyState extends State<My> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyPage()
    );
  }
}

class MyPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      color: ColorUtil("#FF131313"),
      child: ScrollConfiguration(
        behavior: CusBehavior(),
        child:  ListView(
          children: <Widget>[
            Column(
              children: <Widget>[

                //菜单栏--设置
                InkWell(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      IconlyBold.setting,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  onTap: ()=> Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new Settings()),
                  ),
                ),

                Divider(height: 10.0,),

                //用户信息
                Center(
                  child: Column(
                    children: <Widget>[
                      
                      ClipOval(
                        child: Image.network(
                          "https://img2.baidu.com/it/u=3150735703,569940407&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500" ,
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,),
                      ),

                      Divider(height: 10.0,),

                      Text('我是妹子',style: TextStyle(fontSize: 18,color: Colors.white),)
                    ],
                  )
                ),

                Container(

                  decoration: new BoxDecoration(
                    color: ColorUtil("#FF282828"), // 底色
                    //        shape: BoxShape.circle, // 圆形，使用圆形时不可以使用borderRadius
                    // shape: BoxShape.rectangle, // 默认值也是矩形
                    borderRadius: new BorderRadius.circular((8.0)), // 圆角度
                  ),

                  margin: EdgeInsets.only(top: 20,bottom: 50),
                  padding: EdgeInsets.all(20),
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('1000个摄影技巧在线学习',style: TextStyle(fontSize: 15,color: Colors.white)),
                          Text('新用户专属15天学习包',style: TextStyle(fontSize: 13,color:ColorUtil("#FF5A5A5A"))),
                        ],
                      ),

                      Center(
                        child: ElevatedButton(
                          onPressed: (){

                          },
                          child: Text('立即领取'),
                          style: ElevatedButton.styleFrom(
                              // shadowColor: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 8)),
                        )
                      ),
                    ],
                  ),
                  // color: ColorUtil("#FF282828"),
                ),


                InkWell(
                  child: Container(
                    // height: 100,
                    margin: EdgeInsets.only(bottom: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('使用兑换码',style: TextStyle(fontSize: 14,color: Colors.white)),
                            Text('使用兑换码',style: TextStyle(fontSize: 12,color:ColorUtil("#FF5A5A5A"))),
                          ],
                        ),
                        Icon(
                          Icons.keyboard_arrow_right_sharp,
                          color: ColorUtil("#FF5A5A5A"),
                          size: 25,
                        ),
                      ],
                    ),
                  ),
                  onTap: (){
                  },
                ),

                Container(
                  // color: Colors.redAccent,
                  margin: EdgeInsets.only(bottom: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('邀请好友',style: TextStyle(fontSize: 14,color: Colors.white)),
                          Text('邀请好友，免费体验会员',style: TextStyle(fontSize: 12,color:ColorUtil("#FF5A5A5A"))),
                        ],
                      ),
                      Icon(
                        Icons.keyboard_arrow_right_sharp,
                        color: ColorUtil("#FF5A5A5A"),
                        size: 25,
                      ),
                    ],
                  ),
                ),

                Container(
                  // color: Colors.redAccent,
                  margin: EdgeInsets.only(bottom: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('信息中心',style: TextStyle(fontSize: 14,color: Colors.white)),
                          Text('站内通知',style: TextStyle(fontSize: 12,color:ColorUtil("#FF5A5A5A"))),
                        ],
                      ),
                      Icon(
                        Icons.keyboard_arrow_right_sharp,
                        color: ColorUtil("#FF5A5A5A"),
                        size: 25,
                      ),
                    ],
                  ),
                ),

                Container(
                  // color: Colors.redAccent,
                  margin: EdgeInsets.only(bottom: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('反馈',style: TextStyle(fontSize: 14,color: Colors.white)),
                          Text('如果有任何问题，请联系我们',style: TextStyle(fontSize: 12,color:ColorUtil("#FF5A5A5A"))),
                        ],
                      ),
                      Icon(
                        Icons.keyboard_arrow_right_sharp,
                        color: ColorUtil("#FF5A5A5A"),
                        size: 25,
                      ),
                    ],
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
