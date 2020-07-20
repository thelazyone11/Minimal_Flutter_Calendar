import 'package:calendar_app/models/images_models.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ImageViewWidget extends StatefulWidget {
  @override
  _ImageViewWidgetState createState() => _ImageViewWidgetState();
}

class _ImageViewWidgetState extends State<ImageViewWidget> {
  @override
  Widget build(BuildContext context) {
    final imgList = Provider.of<ImageModels>(context).imageData;
    final month = Provider.of<ImageModels>(context).changeMonth;

    return Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.6,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(imgList[month].imageUrl),
                  fit: BoxFit.fill)),
        ),
        Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Align(
                alignment: Alignment.topCenter,
                child: Text(
                  '©' + imgList[month].imageAuthorName,
                  style: TextStyle(color: imgList[month].textcolor),
                )),
            Align(
                alignment: Alignment.topCenter,
                child: Text(
                  imgList[month].imageSite +
                      ' | ' +
                      imgList[month].imageAuthorId,
                  style: TextStyle(color: imgList[month].textcolor),
                ))
          ],
        ),
      ],
    );
  }
}
