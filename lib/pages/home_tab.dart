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
      'appearance': '현빈, 손예진, 김수현, 서지혜',
      'like': false
    }),
    Movie.fromMap({
      'title': '미스터 션샤인',
      'keyword': '의병/미군/로맨스',
      'poster': 'assets/test_movie_2.png',
      'appearance': '이병헌, 김태리, 변요한, 유연석',
      'like': false
    }),
    Movie.fromMap({
      'title': '태양의 후예',
      'keyword': '군인/의사/사랑',
      'poster': 'assets/test_movie_3.png',
      'appearance': '송중기, 송혜교, 진구, 김지원',
      'like': false
    }),
    Movie.fromMap({
      'title': '스물다섯 스물하나',
      'keyword': '펜싱/기자/사랑',
      'poster': 'assets/test_movie_4.png',
      'appearance': '김태리, 남주혁, 최현욱, 보나',
      'like': false
    }),
    Movie.fromMap({
      'title': '도깨비',
      'keyword': '로맨스/판타지/고려',
      'poster': 'assets/test_movie_5.png',
      'appearance': '공유, 김고은, 이동욱, 유인나',
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
