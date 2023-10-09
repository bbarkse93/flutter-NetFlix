import 'package:flutter/material.dart';
import 'package:netflix_app/components/bottom_bar.dart';
import 'package:netflix_app/pages/home_tab.dart';
import 'package:netflix_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "NetFlex",
      theme: theme(),
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              HomeTab(),
              Container(
                child: Center(
                  child: Text("search"),
                ),
              ),
              Container(
                child: Center(
                  child: Text("save"),
                ),
              ),
              Container(
                child: Center(
                  child: Text("list"),
                ),
              ),
            ],
          ),
          bottomNavigationBar: BottomBar(),
        ),
      ),
    );
  }
}
