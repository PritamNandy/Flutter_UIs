import 'package:biz_card/widgets/get_avatar.dart';
import 'package:biz_card/widgets/get_card.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BizCard'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            GetCard(),
            GetAvatar(),
          ],
        ),
      ),
    );
  }
}
