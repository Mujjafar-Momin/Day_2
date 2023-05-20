import 'package:demo_project/SubPages/SearchPage/grid_feed.dart';
import 'package:demo_project/SubPages/SearchPage/search_bar.dart';
import 'package:flutter/cupertino.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MySearchBar(),
       Expanded(child: SizedBox(
           height: MediaQuery.of(context).size.height * 1, child: GridFeed()),
       )],
    );
  }
}
