import 'package:demo_project/SubPages/HomePage/top-bar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
           TopBar(activeCategory: 'Trending'),
          ],
        ),
      ),
    );
  }
}


/*
Text(
          "count: $count",
          style: const TextStyle(fontSize: 25),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 25)),
            onPressed: () {
              setState(() {
                count++;
                print(count);
              });
            },
            child: const Text("Increamenet Count"))

 */