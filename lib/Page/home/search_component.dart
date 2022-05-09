import 'package:flutter/material.dart';
import 'package:shadow/Page/search/search.dart';
import 'package:shadow/Utils/ColorUtil.dart';

class Search_Component extends StatelessWidget {
  // final CreditCardViewModel data;

  // const Search_Component({ Key? key, required this.data}) : super(key: key);
  const Search_Component({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Color color=ColorUtil("#FF282828");

    Color textcolor=ColorUtil("#FF646464");

    return InkWell(
      onTap: (){
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new Search()),
        );
      },

      child: Container(
        height: 40,
        // color: color,
        margin: EdgeInsets.fromLTRB(20, 20, 20, 5),
        // padding: EdgeInsets.only(left: 20, top: 20),
        decoration: new BoxDecoration(
          color: color, // 底色
          borderRadius: BorderRadius.circular(8),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              // left: 10,
              // bottom: -100,
              child: Center(
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Icon(Icons.search,color: textcolor,),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text(
                          '频道、声音或播单',
                          style: TextStyle(
                              color: textcolor
                          ),
                        ),
                      )
                    ],
                  )
              ),
            ),
          ],
        ),
      ),
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