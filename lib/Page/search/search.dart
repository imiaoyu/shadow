import 'package:flutter/material.dart';
import 'package:shadow/Page/home/home.dart';
import 'package:shadow/Utils/ColorUtil.dart';

class Search extends StatelessWidget {
  // final CreditCardViewModel data;

  // const Search_Component({ Key? key, required this.data}) : super(key: key);
  const Search({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: search(),
    );
  }
}

class search extends StatelessWidget{

  Color color=ColorUtil("#FF131313");
  Color color1=ColorUtil("#FF282828");
  Color textcolor=ColorUtil("#FF646464");


  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 40, 0, 0),
        color: color,
        child: Column(
          children: <Widget>[

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[

                IconButton(
                  icon:Icon(Icons.arrow_back_outlined,size: 20,color: Colors.white), onPressed: () { Navigator.pop(context); },
                ),

                Expanded(
                    child: Container(
                      // width: double.infinity,
                      height: 40,
                      // color: color,
                      margin: EdgeInsets.fromLTRB(10, 5, 20, 5),
                      // padding: EdgeInsets.only(left: 20, top: 20),
                      decoration: new BoxDecoration(
                        color: color1, // 底色
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
                )


              ],
            ),





          ],
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