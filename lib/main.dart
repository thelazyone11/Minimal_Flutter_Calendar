import 'package:calendar_app/models/images_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import './screens/homepage_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.grey[100],
        systemNavigationBarIconBrightness: Brightness.dark));
    return ChangeNotifierProvider.value(
      value: ImageModels(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Minimal Calendar',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Baloo2',
        ),
        home: HomePage(),
      ),
    );
  }
}
