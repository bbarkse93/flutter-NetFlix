import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:netflix_app/components/work_bar.dart';
import 'package:netflix_app/model/model_movie.dart';

class DetailTab extends StatefulWidget {
  final Movie movie;

  const DetailTab({super.key, required this.movie});
  @override
  State<DetailTab> createState() => _DetailTabState();
}

class _DetailTabState extends State<DetailTab> {
  bool like = false;
  @override
  void initState() {
    super.initState();
    like = widget.movie.like;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.movie.poster),
                        fit: BoxFit.cover),
                  ),
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        alignment: Alignment.center,
                        color: Colors.black.withOpacity(0.1),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 45, 0, 10),
                                child: Image.asset(widget.movie.poster),
                                height: 300,
                              ),
                              Container(
                                padding: EdgeInsets.all(7),
                                child: Text(
                                  "99% 일치 2019 15+ 시즌 1개",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 13),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(7),
                                child: Text(
                                  widget.movie.title,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(3),
                                child: TextButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.red)),
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(Icons.play_arrow),
                                      Text("재생")
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Text(widget.movie.toString()),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.all(5),
                                child: Text(
                                  "출연:  " + widget.movie.appearance,
                                  style: TextStyle(
                                      color: Colors.white60, fontSize: 12),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                  ),
                )
              ],
            ),
            Container(
              color: Colors.black26,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  WorkBar(Icons.add, "찜하기"),
                  WorkBar(Icons.thumb_up, "평가"),
                  WorkBar(Icons.download, "공유"),
                  WorkBar(Icons.download, "저장"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
