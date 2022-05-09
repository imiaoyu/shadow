import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shadow/Page/home/credit_card.dart';
import 'package:shadow/Utils/ColorUtil.dart';
import 'package:shadow/Utils/CusBehaviorUtil.dart';

import 'friend_circle.dart';
import 'menu_component.dart';
import 'mock_data.dart';
import 'new_component.dart';
import 'pet_card.dart';
import 'recommended_component.dart';
import 'rotation_component.dart';
import 'search_component.dart';
import 'video_content_component.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {


  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

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
      body: LayoutDemo(),
    );
  }
}


class LayoutDemo extends StatelessWidget {

  Color color=ColorUtil("#FF131313");

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
      color: color,
      child: ScrollConfiguration(
        behavior: CusBehavior(),
        child:  ListView(
          children: <Widget>[
            Search_Component(),
            Rotation_Component(),
            Menu_Component(data: MenuViewData),
            Recommended_Component(data: RecommendedViewData,),
            New_Component(),
            Video_Content_Component(),


            // CreditCard(data: creditCardData),
            // PetCard(data: petCardData),
            // FriendCircle(data: friendCircleData),
          ],
        ),
      )
    );
  }
}
