import 'package:demo_project/SubPages/Profile/About.dart';
import 'package:demo_project/SubPages/Profile/MidProfile.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 16,
          left: MediaQuery.of(context).size.width * 0.3,
          child: const CircleAvatar(
            radius: 80,
            child: Image(
              image: AssetImage('images/fox.png'),
            ),
          ),
        ),
        const MidProfile(),
        const About()

      ],
    );
  }
}
