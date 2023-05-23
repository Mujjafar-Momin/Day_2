import 'package:demo_project/SubPages/Profile/profile.dart';
import 'package:demo_project/SubPages/SearchPage/home.dart';
import 'package:demo_project/SubPages/Liked/liked.dart';
import 'package:demo_project/SubPages/SearchPage/search_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;
 List<Widget> pages=const[
   Home(),
   SearchPage(),
   Liked(),
   Profile()
 ];
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
            icon: const Icon(Icons.arrow_back_ios),
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
    body: pages[currentPage],
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
