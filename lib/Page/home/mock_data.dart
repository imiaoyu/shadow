import 'package:flutter/material.dart';
import 'package:shadow/Page/video_player/video_comment_page.dart';

import 'friend_circle.dart';
import 'menu_component.dart';
import 'pet_card.dart';
import 'credit_card.dart';
import 'recommended_component.dart';
// import 'friend_circle.dart';

// 宠物卡片mock数据
const PetCardViewModel petCardData = PetCardViewModel(
  coverUrl: 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1425538345,901220022&fm=26&gp=0.jpg',
  userImgUrl: 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1699287406,228622974&fm=26&gp=0.jpg',
  userName: '大米要煮小米粥',
  description: '小米 | 我家的小仓鼠',
  publishTime: '12:59',
  topic: '萌宠小屋',
  publishContent: '今天带着小VIVI去了爪子生活体验馆，好多好玩的小东西都想带回家！',
  replies: 356,
  likes: 258,
  shares: 126,
);

/// 信用卡mock数据
const CreditCardViewModel creditCardData = CreditCardViewModel(
  bankName: '招商银行',
  bankLogoUrl: 'https://img1.baidu.com/it/u=3496579180,3991368100&fm=253&fmt=auto&app=138&f=JPEG?w=180&h=180',
  cardType: '储蓄卡',
  cardNumber: '6210  ****  ****  1426',
  cardColors: [Color(0xFFF17B68), Color(0xFFE95F66)],
  validDate: '10/27',
);

//菜单栏数据
const MenuViewModel MenuViewData = MenuViewModel(
 data: [
   Menu(
       menuName: '排行榜',
       menuImage: 'http://i.miaosu.bid/data/f_77652748.jpg',
   ),
   Menu(
     menuName: '分类',
     menuImage: 'http://i.miaosu.bid/data/f_89444159.jpg',
   ),
   Menu(
     menuName: '英语',
     menuImage: 'http://i.miaosu.bid/data/f_29477650.jpg',
   ),
   Menu(
     menuName: '日语',
     menuImage: 'http://i.miaosu.bid/data/f_43771800.jpg',
   ),
   Menu(
     menuName: '课程',
     menuImage: 'http://i.miaosu.bid/data/f_87870040.jpg',
   ),
   Menu(
     menuName: '课程',
     menuImage: 'http://i.miaosu.bid/data/f_87870040.jpg',
   ),
   Menu(
     menuName: '课程',
     menuImage: 'http://i.miaosu.bid/data/f_87870040.jpg',
   ),
   Menu(
     menuName: '课程',
     menuImage: 'http://i.miaosu.bid/data/f_87870040.jpg',
   ),
   Menu(
     menuName: '课程',
     menuImage: 'http://i.miaosu.bid/data/f_87870040.jpg',
   ),
   Menu(
     menuName: '课程',
     menuImage: 'http://i.miaosu.bid/data/f_87870040.jpg',
   ),
 ],
);


//商业财经数据
const RecommendedViewModel RecommendedViewData = RecommendedViewModel(
  recommended: [
    a(
      menuName: '去你的旅行',
      menuImage: 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F01946c5ec51f4aa801214d72bcc419.jpg%403000w_1l_0o_100sh.jpg&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1650806594&t=549c033c0c1a77ae2164abb5c4ca66d2',
    ),
    a(
      menuName: '南朝清谈',
      menuImage: 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F01b0825ec3d937a801209b86d2fe6f.jpg%402o.jpg&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1650806637&t=0981b7a54e81ba1e5f72b0481b077d5d',
    ),
    a(
      menuName: '昆虫记',
      menuImage: 'https://img0.baidu.com/it/u=3851433888,1567401730&fm=253&fmt=auto&app=138&f=JPEG?w=639&h=500',
    ),
    a(
      menuName: '写在岁月一藕',
      menuImage: 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F01927b5df79e46a8012097b3cd3fa5.jpg%403000w_1l_2o_100sh.jpg&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1650807073&t=2a53a64988b834a5599bc09e8b0398bf',
    ),
    a(
      menuName: '秋韵',
      menuImage: 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F01c10a57ea26ae0000018c1b5917a1.jpg%401280w_1l_2o_100sh.png&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1650807181&t=294c53f67b44dfe007f9eef1b30a1145',
    ),
  ],
);


/// 朋友圈mock数据
const FriendCircleViewModel friendCircleData = FriendCircleViewModel(
  userName: '小石头',
  userImgUrl: 'https://img0.baidu.com/it/u=1643004770,1134626375&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500',
  saying: '听说Flutter很🔥，我也来凑热闹，github上建了一个仓库，欢迎来撩~✌✌✌',
  pic: 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fupload-images.jianshu.io%2Fupload_images%2F1859207-66dbfb759f96a866.jpg&refer=http%3A%2F%2Fupload-images.jianshu.io&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1650605963&t=ebeaec6d2df536446e59590985894ca8',
  publishTime: '2小时前',
  comments: [
    Comment(
        source: true,
        fromUser: '若海',
        toUser: '小石头',
        content: '性能如何？'
    ),
    Comment(
        source: false,
        fromUser: '小石头',
        toUser: '若海',
        content: '性能不错，但是开发体验感觉差一点。。。'
    ),
    Comment(
        source: false,
        fromUser: '若海',
        toUser: '小石头',
        content: '周末我也试试，嘻嘻~'
    ),
    Comment(
        source: true,
        fromUser: '大佬',
        toUser: '小石头',
        content: '卧槽，求求你别学了'
    ),
    Comment(
        source: true,
        fromUser: '产品',
        toUser: '小石头',
        content: '工作量不饱和啊你这是！'
    ),
    Comment(
        source: false,
        fromUser: '小石头',
        toUser: '大佬',
        content: '卧槽，大佬别闹，学不动了。。。'
    ),
    Comment(
        source: false,
        fromUser: '小石头',
        toUser: '产品',
        content: '不不不，你的需求都已经完成了~！'
    ),
  ],
);

/// 视频评论数据
const VideoCommentViewModel VideoCommentData = VideoCommentViewModel(
  commentss: [
    Comments(
        source: true,
        fromUser: '若海',
        toUser: '小石头',
        content: '性能如何？'
    ),
    Comments(
        source: false,
        fromUser: '小石头',
        toUser: '若海',
        content: '性能不错，但是开发体验感觉差一点。。。'
    ),
    Comments(
        source: false,
        fromUser: '若海',
        toUser: '小石头',
        content: '周末我也试试，嘻嘻~'
    ),
    Comments(
        source: true,
        fromUser: '大佬',
        toUser: '小石头',
        content: '卧槽，求求你别学了'
    ),
    Comments(
        source: true,
        fromUser: '产品',
        toUser: '小石头',
        content: '工作量不饱和啊你这是！'
    ),
    Comments(
        source: false,
        fromUser: '小石头',
        toUser: '大佬',
        content: '卧槽，大佬别闹，学不动了。。。'
    ),
    Comments(
        source: false,
        fromUser: '小石头',
        toUser: '产品',
        content: '不不不，你的需求都已经完成了~！'
    ),
    Comments(
        source: true,
        fromUser: '若海',
        toUser: '小石头',
        content: '性能如何？'
    ),
    Comments(
        source: false,
        fromUser: '小石头',
        toUser: '若海',
        content: '性能不错，但是开发体验感觉差一点。。。'
    ),
    Comments(
        source: false,
        fromUser: '若海',
        toUser: '小石头',
        content: '周末我也试试，嘻嘻~'
    ),
    Comments(
        source: true,
        fromUser: '大佬',
        toUser: '小石头',
        content: '卧槽，求求你别学了'
    ),
    Comments(
        source: true,
        fromUser: '产品',
        toUser: '小石头',
        content: '工作量不饱和啊你这是！'
    ),
    Comments(
        source: false,
        fromUser: '小石头',
        toUser: '大佬',
        content: '卧槽，大佬别闹，学不动了。。。'
    ),
    Comments(
        source: false,
        fromUser: '小石头',
        toUser: '产品',
        content: '不不不，你的需求都已经完成了~！'
    ),
  ],
);