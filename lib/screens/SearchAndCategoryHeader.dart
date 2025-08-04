import 'package:flutter/material.dart';
import 'package:blinkit_clone/screens/categories.dart';

class SearchAndCategoryHeader extends SliverPersistentHeaderDelegate {
  final int selectedIndex;
  final List<String> categories;
  final List<IconData> icons;
  final Function(int) onCategoryTap;

  SearchAndCategoryHeader({
    required this.selectedIndex,
    required this.categories,
    required this.icons,
    required this.onCategoryTap,
  });

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Column(
      children: [
        Container(height: 20, color: Color.fromARGB(255, 202, 190, 50)),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          color: Color.fromARGB(255, 202, 190, 50),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search for fruits,vegetables",
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.mic),
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        Container(
          color: const Color.fromARGB(255, 202, 190, 50),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(categories.length, (index) {
                return CategoryNavItem(
                  icon: icons[index],
                  label: categories[index],
                  isSelected: selectedIndex == index,
                  onTap: () => onCategoryTap(index),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => 150;

  @override
  double get minExtent => 150;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
