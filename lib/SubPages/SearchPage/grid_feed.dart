import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridFeed extends StatelessWidget {
  const GridFeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var arrColor = [
      Colors.purple,
      Colors.yellowAccent,
      Colors.pinkAccent,
      Colors.pinkAccent,
      Colors.indigo,
      Colors.yellow,
      Colors.blue,
      Colors.red,
      Colors.green,
      Colors.pink,
      Colors.yellow,
      Colors.blue,
      Colors.red,
      Colors.green,
      Colors.pink
    ];
 final List<String> imgUrl= [
   'https://picsum.photos/200',
   'https://picsum.photos/id/1/200',
   'https://picsum.photos/id/3/200',
   'https://picsum.photos/id/23/200',
   'https://picsum.photos/id/12/200',
   'https://picsum.photos/id/43/200',
   'https://picsum.photos/id/55/200',
   'https://picsum.photos/id/56/200',
   'https://picsum.photos/id/41/200',
   'https://picsum.photos/id/15/200',
   'https://picsum.photos/id/1/200',
   'https://picsum.photos/id/3/200',
   'https://picsum.photos/id/25/200',
   'https://picsum.photos/id/23/200',
   'https://picsum.photos/id/30/200',
   'https://picsum.photos/id/13/200',
   'https://picsum.photos/id/34/200',
   'https://picsum.photos/id/18/200',
   'https://picsum.photos/id/43/200',
   'https://picsum.photos/id/45/200',
   'https://picsum.photos/id/15/200'
 ];

    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: imgUrl.length,
        itemBuilder: (context, index)
    {
      return Container(
        child: Image.network(imgUrl[index]),
      );
    });
  }
}
