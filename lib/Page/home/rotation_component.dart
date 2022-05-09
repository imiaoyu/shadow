import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shadow/Utils/ColorUtil.dart';
import 'package:card_swiper/card_swiper.dart';

class Rotation_Component extends StatelessWidget {
  // final CreditCardViewModel data;

  // const Search_Component({ Key? key, required this.data}) : super(key: key);
  const Rotation_Component({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // 轮播图片
    List<Map> imageList = [
      {
        "url":"https://img0.baidu.com/it/u=4118142271,1573842581&fm=253&fmt=auto&app=138&f=JPEG?w=768&h=500"
      },
      {
        "url":"https://img2.baidu.com/it/u=4081269687,3084704024&fm=253&fmt=auto&app=138&f=JPEG?w=709&h=500"
      },
      {
        "url":"https://img0.baidu.com/it/u=592701406,292206906&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=250"
      },
      {
        "url":"https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F016a445c3721cba80121fbb013471a.png&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1650629528&t=7385836972b9b5e2ebe98a0c023ff810"
      }
    ];

    Color color=ColorUtil("#FF282828");

    return Container(
      height: 200,
      // color: color,
      margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
      // padding: EdgeInsets.only(left: 20, top: 20),
      decoration: new BoxDecoration(
        // color: color, // 底色
        borderRadius: BorderRadius.circular(8),
      ),
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return new Container(
              decoration: new BoxDecoration(
                // color: color, // 底色
                borderRadius: BorderRadius.circular(20),
              ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child:  InkWell(
                child: CachedNetworkImage(
                  // imageList[index]["url"],
                  imageUrl:  imageList[index]["url"],
                  // placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                  fit: BoxFit.fill,
                ),
                onTap: (){
                  print(imageList[index]["url"]);
                },
              )
            ),
          );
        },
        indicatorLayout: PageIndicatorLayout.COLOR,
        itemCount: 3,
        viewportFraction: 0.88,
        scale: 0.9,
        loop: true,
        autoplay: true,
        autoplayDelay: 5000,
      )
    );
  }
}

class CreditCardViewModel {
  /// 银行
  final String bankName;

  /// 银行Logo
  final String bankLogoUrl;

  /// 卡类型
  final String cardType;

  /// 卡号
  final String cardNumber;

  /// 卡片颜色
  final List<Color> cardColors;

  /// 有效期
  final String validDate;

  const CreditCardViewModel({
    required this.bankName,
    required this.bankLogoUrl,
    required this.cardType,
    required this.cardNumber,
    required this.cardColors,
    required this.validDate,
  });
}