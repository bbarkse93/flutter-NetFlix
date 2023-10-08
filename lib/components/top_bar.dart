import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            "assets/netflix_logo.svg",
            fit: BoxFit.contain,
            height: 25,
          ),
          Container(
            padding: EdgeInsets.only(
              right: 1,
            ),
            child: Text(
              "TV 프로그램",
              style: TextStyle(fontSize: 14),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              right: 1,
            ),
            child: Text(
              "영화",
              style: TextStyle(fontSize: 14),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              right: 1,
            ),
            child: Text(
              "내가 찜한 콘텐츠",
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
