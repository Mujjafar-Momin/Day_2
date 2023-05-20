import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key, required this.activeCategory}) : super(key: key);

  final String activeCategory;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listCategory.length,
          itemBuilder: (context, index) {
            return EventCategoryItem(
              text: listCategory[index],
              isActive: listCategory[index] == activeCategory,
              isFirst: index==0,
              isLast: index == listCategory.length - 1,
            );
          }),
    );
  }
}

class EventCategoryItem extends StatelessWidget {
  const EventCategoryItem(
      {Key? key,
      required this.text,
      required this.isActive,
      required this.isLast,
      required this.isFirst})
      : super(key: key);
  final String text;
  final bool isActive;
  final bool isLast;
  final bool isFirst;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin:isLast?const EdgeInsets.only(right: 166):EdgeInsets.only(left: isFirst?16:8),
      duration: const Duration(milliseconds: 100),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        color: isActive ? Colors.purple[300] : Colors.transparent,
      ),
      child: InkWell(
        onTap: (){},
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Center(
            child: Text(
              text,
              style: TextStyle(color: isActive ? Colors.white : Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}

final List<String> listCategory = [
  'Trending',
  'Art',
  'Adventure',
  'Game',
  'Travel',
  'Trade',
  'Business',
  'Cricket'
];
