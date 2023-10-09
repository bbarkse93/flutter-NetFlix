import 'package:flutter/material.dart';
import 'package:netflix_app/components/box_slider.dart';
import 'package:netflix_app/components/carousel_image.dart';
import 'package:netflix_app/components/circle_slider.dart';
import 'package:netflix_app/components/top_bar.dart';
import 'package:netflix_app/model/model_movie.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  List<Movie> movies = [
    Movie.fromMap({
      'title': '사랑의 불시착',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'assets/test_movie_1.png',
      'like': false
    }),
    Movie.fromMap({
      'title': '미스터 션샤인',
      'keyword': '의병/미군/로맨스',
      'poster': 'assets/test_movie_2.png',
      'like': false
    }),
    Movie.fromMap({
      'title': '태양의 후예',
      'keyword': '군인/의사/사랑',
      'poster': 'assets/test_movie_3.png',
      'like': false
    }),
    Movie.fromMap({
      'title': '스물다섯 스물하나',
      'keyword': '펜싱/기자/사랑',
      'poster': 'assets/test_movie_4.png',
      'like': false
    }),
    Movie.fromMap({
      'title': '도깨비',
      'keyword': '로맨스/판타지/고려',
      'poster': 'assets/test_movie_5.png',
      'like': false
    }),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            CarouselImage(movies: movies),
            TopBar(),
          ],
        ),
        Container(
          padding: EdgeInsets.all(7),
          child: CircleSlider(movies: movies),
        ),
        Container(
          padding: EdgeInsets.all(7),
          child: BoxSlider(movies: movies),
        )
      ],
    );
  }
}
