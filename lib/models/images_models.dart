import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImageModel {
  final String month;
  final String imageAuthorName;
  final String imageAuthorId;
  final String imageSite;
  final String imageUrl;
  final Color textcolor;

  ImageModel(
      {this.month,
      this.imageAuthorName,
      this.imageAuthorId,
      this.imageSite,
      this.imageUrl,
      this.textcolor});
}

class ImageModels with ChangeNotifier {
  List<ImageModel> _imageData = [
    ImageModel(
      month: '1',
      imageAuthorName: 'Adam Chang',
      imageAuthorId: '@sametomorrow',
      imageSite: 'Unsplash',
      textcolor: Colors.black,
      imageUrl:
          'https://images.unsplash.com/photo-1491002052546-bf38f186af56?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1383&q=80',
    ),
    ImageModel(
      month: '2',
      imageAuthorName: 'Thomas Lipke',
      imageAuthorId: '@t_lipke',
      imageSite: 'Unsplash',
      textcolor: Colors.white,
      imageUrl:
          'https://images.unsplash.com/photo-1516466723877-e4ec1d736c8a?ixlib=rb-1.2.1&auto=format&fit=crop&w=1406&q=80',
    ),
    ImageModel(
      month: '3',
      imageAuthorName: 'Diego Jimenez',
      imageAuthorId: '@diegojimenez',
      imageSite: 'Unsplash',
      textcolor: Colors.black,
      imageUrl:
          'https://images.unsplash.com/photo-1494783329112-4a6795291178?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
    ),
    ImageModel(
      month: '4',
      imageAuthorName: 'Irina Iriser',
      imageAuthorId: '@iriser',
      imageSite: 'Unsplash',
      textcolor: Colors.black,
      imageUrl:
          'https://images.unsplash.com/photo-1514993121919-6bc4e9efee69?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80',
    ),
    ImageModel(
      month: '5',
      imageAuthorName: 'Ethan Robertson',
      imageAuthorId: '@ethanrobertson',
      imageSite: 'Unsplash',
      textcolor: Colors.black,
      imageUrl:
          'https://images.unsplash.com/photo-1473496169904-658ba7c44d8a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
    ),
    ImageModel(
      month: '6',
      imageAuthorName: 'Thibault Mokuenko',
      imageAuthorId: '@tmokuenko',
      imageSite: 'Unsplash',
      textcolor: Colors.black,
      imageUrl:
          'https://images.unsplash.com/photo-1569941116836-47d9dd756125?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
    ),
    ImageModel(
      month: '7',
      imageAuthorName: 'Mike Kotsch',
      imageAuthorId: '@mike',
      imageSite: 'Unsplash',
      textcolor: Colors.white,
      imageUrl:
          'https://images.unsplash.com/uploads/14116603688211a68546c/30f8f30b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
    ),
    ImageModel(
      month: '8',
      imageAuthorName: 'Tunafish Mayonnaise',
      imageAuthorId: '@tunamayoonigiri',
      imageSite: 'Unsplash',
      textcolor: Colors.black,
      imageUrl:
          'https://images.unsplash.com/photo-1591366938268-c410af78ac90?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80',
    ),
    ImageModel(
      month: '9',
      imageAuthorName: 'Donnie Rosie',
      imageAuthorId: '@drosie',
      imageSite: 'Unsplash',
      textcolor: Colors.white,
      imageUrl:
          'https://images.unsplash.com/photo-1517023095675-bd2b7fd2f99b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
    ),
    ImageModel(
      month: '10',
      imageAuthorName: 'Katerina Kerdi',
      imageAuthorId: '@katekerdi',
      imageSite: 'Unsplash',
      textcolor: Colors.black,
      imageUrl:
          'https://images.unsplash.com/photo-1508163223045-1880bc36e222?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80',
    ),
    ImageModel(
      month: '11',
      imageAuthorName: 'Sandeep Kr Yadav',
      imageAuthorId: '@fiftymm',
      imageSite: 'Unsplash',
      textcolor: Colors.black,
      imageUrl:
          'https://images.unsplash.com/photo-1572116029288-c66028ff5d71?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
    ),
    ImageModel(
      month: '12',
      imageAuthorName: 'louis tricot',
      imageAuthorId: '@louistricot',
      imageSite: 'Unsplash',
      textcolor: Colors.white,
      imageUrl:
          'https://images.unsplash.com/photo-1546702954-b2bbe07fc187?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
    ),
  ];

  var now = DateTime.now().month - 1;

  int get changeMonth {
    return now;
  }

  List<ImageModel> get imageData {
    return [..._imageData];
  }

  void passCurrentMonth(int increNum) {
    now = increNum;

    notifyListeners();
  }
}
