import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shadow/Utils/ColorUtil.dart';
import 'package:shadow/Utils/CusBehaviorUtil.dart';

class OtherTopBar extends StatefulWidget {
  const OtherTopBar({Key? key}) : super(key: key);

  @override
  State<OtherTopBar> createState() => _OtherTopBarState();
}

class _OtherTopBarState extends State<OtherTopBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Container(
          color: ColorUtil("#FF131313"),
          // foregroundColor: ColorUtil("#FF121212"),
          // shadowColor: ColorUtil("#FF121212"),
        ),
        preferredSize: Size.fromHeight(0.0),),
      body: OtherTopBarPage(),
    );
  }
}

class OtherTopBarPage extends StatelessWidget{


  @override
  Widget build(BuildContext context) {


    Color color=ColorUtil("#FF131313");
    Color color1=ColorUtil("#FF686868");
    Color color2=ColorUtil("#FF282828");
    Color color3=ColorUtil("#FFBBBBBB");
    Color color4=ColorUtil("#FF131313");
    Color color5=ColorUtil("#FF1B1B1B");


    return Container(
      color: color,
      child: DefaultTabController(
          length: 2,
          child: SizedBox(
            // height: 500,
            child: Scaffold(
              backgroundColor: color4,
              body:DefaultTabController(
                length: 2,
                child: Column(
                  children: <Widget>[
                    Container(

                      height: 40,
                      // color: color2,
                      decoration: BoxDecoration(
                        // color: color2,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
                      padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                      child: TabBar(
                        unselectedLabelColor: color1,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicator:BoxDecoration(
                          // color: color1,
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
                                child:Text("缓存",style: TextStyle(fontSize: 18),),
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
                                child:Text("喜欢",style: TextStyle(fontSize: 18)),
                              ),
                            ),
                          ),
                          // Add Tabs here
                        ],
                      ),
                    ),
                    Container(
                      // margin: EdgeInsets.only(left: 0),
                      margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
                      child: Align(
                        alignment:Alignment.centerLeft,
                        child: 1 != 0 ?
                        Text("1个缓存",style: TextStyle(fontSize: 14,color: Colors.white)) :
                        Text("1个喜欢",style: TextStyle(fontSize: 14,color: Colors.white))
                      ),

                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        // margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
                        child: ScrollConfiguration(
                          behavior: CusBehavior(),
                       child: TabBarView(
                          children: <Widget>[

                            Container(
                                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                child: Row(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[

                                    Container(
                                      height: 100,
                                      width: 100,
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(8),
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
                                      // height: 200,
                                      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                      child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text('如何让富婆喜欢你',style: TextStyle(color:Colors.white,fontSize: 16,height: 2.0,),),
                                            Text('气泡迸迸',style: TextStyle(color:color1,fontSize: 12,height: 2.0,),),
                                            Text('1/1 已下载',style: TextStyle(color:color3,fontSize: 12,height: 2.0, ),),
                                          ],
                                      ),
                                    )


                                  ],
                                )
                            ),

                            Container(
                              // decoration: new BoxDecoration(
                              //   color: color2, // 底色
                              //   borderRadius: BorderRadius.circular(20),
                              // ),
                              // color: color2,
                              // height: 200,
                                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                child: Row(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[

                                    Container(
                                      height: 100,
                                      width: 100,
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(8),
                                          child: CachedNetworkImage(
                                            // imageList[index]["url"],
                                            imageUrl: 'https://img1.baidu.com/it/u=1634020636,1169741957&fm=253&fmt=auto&app=138&f=JPEG?w=569&h=500',
                                            // placeholder: (context, url) => CircularProgressIndicator(),
                                            errorWidget: (context, url, error) => Icon(Icons.error),
                                            fit: BoxFit.fill,
                                          )
                                      ),
                                    ),

                                    Container(
                                      // height: 200,
                                      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text('剩余的时间',style: TextStyle(color:Colors.white,fontSize: 16,height: 2.0,),),
                                          Text('气泡迸迸',style: TextStyle(color:color1,fontSize: 12,height: 2.0,),),
                                          Text('330人都喜欢',style: TextStyle(color:color3,fontSize: 12,height: 2.0, ),),
                                        ],
                                      ),
                                    )


                                  ],
                                )
                            ),
                          ],
                        ),
                        ),
                      )
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
