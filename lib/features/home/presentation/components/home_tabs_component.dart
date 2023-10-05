import 'package:blockbucks/core/use_cases/home_tabs_use_cases.dart';

import 'package:flutter/material.dart';

class HomeTabsComp extends StatelessWidget {
  final HomeTabSub tab;
  final VoidCallback? onTap;
  const HomeTabsComp({
    super.key,
    required this.tab,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 70,
            width: 70,
            margin: const EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(10),
                border:
                    Border.all(width: 1, color: Colors.black.withOpacity(.5))),
            child: Icon(
              tab.icon,
              size: 30,
            ),
          ),
          Text(
            tab.title,
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),
          )
        ],
      ),
    );
  }
}
