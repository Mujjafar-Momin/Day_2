
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MidProfile extends StatelessWidget {
  const MidProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
      EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.23),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Red Foxy',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text('Flutter Software Developer'),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap:(){},
                child: const CircleAvatar(
                  radius: 20,
                  child: Icon(FontAwesomeIcons.github, color: Colors.orange),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                onTap:(){},
                child: const CircleAvatar(
                  radius: 20,
                  child: Icon(FontAwesomeIcons.youtube, color: Colors.orange),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                onTap:(){},
                child: const CircleAvatar(
                  radius: 20,
                  child: Icon(FontAwesomeIcons.twitter, color: Colors.orange),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                onTap:(){},
                child: const CircleAvatar(
                  radius: 20,
                  child: Icon(FontAwesomeIcons.instagram, color: Colors.orange),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
