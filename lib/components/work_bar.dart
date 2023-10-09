import 'package:flutter/material.dart';

class WorkBar extends StatelessWidget {
  final IconData iconData;
  final String text;

  WorkBar(this.iconData, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: InkWell(
        onTap: () {},
        child: Column(
          children: <Widget>[
            Icon(iconData),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Text(
                "$text",
                style: TextStyle(fontSize: 11, color: Colors.white60),
              ),
            )
          ],
        ),
      ),
    );
  }
}
