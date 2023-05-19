import 'package:flutter/material.dart';

int itemCount=20;
class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: itemCount,
        itemBuilder: (context,index){
          return ListTile(
            leading: Icon(Icons.person_2),
            title: Text('User ${index}'),
            trailing: Icon(Icons.favorite),
            onTap: (){
              debugPrint('Item ${index} is tapped');
            },
          );
        });
  }
}
