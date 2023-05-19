
import 'package:flutter/material.dart';

class MySearchBar extends StatefulWidget {
  @override
  _MySearchBarState createState() => _MySearchBarState();
}

class _MySearchBarState extends State<MySearchBar> {
  TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _performSearch(String searchText) {
    // Perform your search operation here
    print('Searching for: $searchText');
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _searchController,
      onChanged: _performSearch,
      decoration: const InputDecoration(
        hintText: 'Search',
        prefixIcon: Icon(Icons.search,color: Colors.blue),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
