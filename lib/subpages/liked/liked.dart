import 'package:flutter/material.dart';

int itemCount = 20;

class Liked extends StatefulWidget {
  const Liked({Key? key}) : super(key: key);

  @override
  State<Liked> createState() => _LikedState();
}

class _LikedState extends State<Liked> {
  List<bool> isLiked = List.generate(20, (index) => false);

  void toggleLiked(int index) {
    setState(() {
      isLiked[index] = !isLiked[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.person_2),
            title: Text('User $index'),
            trailing: Icon(
              isLiked[index] ? Icons.favorite : Icons.favorite_border,
              color: isLiked[index] ? Colors.red : null,
            ),
            onTap: () {
              toggleLiked(index);
              debugPrint('Item $index is tapped');
            },
          );
        });
  }
}
