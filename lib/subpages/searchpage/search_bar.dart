import 'package:flutter/material.dart';

class MySearchBar extends StatefulWidget {
  const MySearchBar({super.key});

  @override
  _MySearchBarState createState() => _MySearchBarState();
}class _MySearchBarState extends State<MySearchBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: const Color(0x0F000000),
                borderRadius: BorderRadius.circular(16),
              ),
              child: TextFormField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 25,
                    ),
                    //alignLabelWithHint: true,
                    hintText: 'Search profile',
                    border: InputBorder.none,
                    hintStyle: const TextStyle(color: Colors.black26),
                    prefixIconConstraints:
                        BoxConstraints.tight(const Size.fromRadius(20.0))),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
