import 'package:flutter/material.dart';
import 'package:shadow/Page/home/mock_data.dart';
import 'package:shadow/Utils/ColorUtil.dart';
import 'package:shadow/Utils/CusBehaviorUtil.dart';

class Video_Comment_Page extends StatelessWidget {
  // final VideoCommentViewModel data;
  //
  // const Video_Comment_Page({
  //   Key ? key,
  //   required this.data,
  // }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.fromLTRB(0,0,0,20),
      padding: EdgeInsets.fromLTRB(15,0,15,0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: renderComments(data: VideoCommentData),
          ),
        ],
      ),
    );
  }
}


class renderComments extends StatelessWidget {

  final VideoCommentViewModel data;

  const renderComments({
    Key ? key,
    required this.data,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Color color=ColorUtil("#FF8B8B8B");
    Color color1=ColorUtil("#FF686868");
    Color color2=ColorUtil("#FF1B1B1B");
    Color color3=ColorUtil("#FF6D6D6D");
    Color color4=ColorUtil("#FF131313");

    return MediaQuery.removePadding(
        removeTop: true,
        context: context,
        child:  ScrollConfiguration(
        behavior: CusBehavior(),
          child:   ListView(
            children: <Widget>[

              Container(

                decoration: BoxDecoration(
                  // color: color2,
                  borderRadius: BorderRadius.circular(8),
                ),

                // margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(10),
                // color: color2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: this.data.commentss.map((comment) {
                    return Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF333333),
                          // height: 2.5
                        ),
                        children: [
                          WidgetSpan(
                              child:Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                child: CircleAvatar(
                                  radius: 12,
                                  backgroundImage: NetworkImage("https://img1.baidu.com/it/u=583582599,306470958&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500"),
                                ),
                              )
                          ),
                          // alignment: PlaceholderAlignment.bottom,

                          TextSpan(
                            text: comment.fromUser,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          TextSpan(text: '：${comment.content}',style: TextStyle(color: color3)),
                          WidgetSpan(
                              child:Container(
                                height: 10,
                              )
                          ),
                        ]..insertAll(1, comment.source ? [TextSpan()] : [
                          TextSpan(text: ' 回复 ',style: TextStyle(color: color3)),
                          TextSpan(
                            text: '@${comment.toUser}',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),


                        ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              )

            ],
          ),
        )
    );
  }
  }

class VideoCommentViewModel {

  /// 评论内容
  final List<Comments> commentss;

  const VideoCommentViewModel({
    required this.commentss,
  });
}

class Comments {
  /// 是否发起人
  final bool source;

  /// 评论者
  final String fromUser;

  /// 被评论者
  final String toUser;

  // 评论内容
  final String content;

  const Comments({
    required this.source,
    required this.fromUser,
    required this.toUser,
    required this.content,
  });
}