import 'package:calendar_app/widgets/date_grid.dart';
import 'package:calendar_app/widgets/image_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      extendBody: true,
      body: Column(
        children: <Widget>[
          ImageViewWidget(),
          DateGrid(),
          //BottomWidget(),
        ],
      ),
    );
  }
}
