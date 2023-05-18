import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var count = 0;
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.popUntil(
                  context, (Route<dynamic> route) => route.isFirst);
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
          backgroundColor: Theme
              .of(context)
              .colorScheme
              .inversePrimary,
          title: Text(widget.title),
          actions: [IconButton(onPressed: ()
      {},
      icon: const FaIcon(
          FontAwesomeIcons.facebookMessenger, size: 32, color: Colors.purple))],
    ),
    body: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
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
    ],
    ),
    ),
    bottomNavigationBar: NavigationBar(
    destinations: const [
    NavigationDestination(icon: Icon(Icons.home), label: "Home"),
    NavigationDestination(icon: Icon(Icons.search), label: "search"),
    NavigationDestination(icon: Icon(Icons.favorite), label: "Like"),
    NavigationDestination(icon: Icon(Icons.person_2), label: "Profile")
    ],
    onDestinationSelected: (int index){
    setState(() {
    currentPage=index;
    });
    },
    selectedIndex: currentPage,
    ),);
    }
}
