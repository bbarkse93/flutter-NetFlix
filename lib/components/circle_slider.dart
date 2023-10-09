import 'package:flutter/material.dart';
import 'package:netflix_app/model/model_movie.dart';
import 'package:netflix_app/pages/detail_tab.dart';

class CircleSlider extends StatelessWidget {
  const CircleSlider({
    super.key,
    required this.movies,
  });

  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("미리보기"),
        Container(
          height: 120,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: makeCircleImages(context, movies),
          ),
        )
      ],
    );
  }
}

List<Widget> makeCircleImages(BuildContext context, List<Movie> movies) {
  List<Widget> results = [];
  for (var i = 0; i < movies.length; i++) {
    results.add(
      InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute<Null>(
                fullscreenDialog: true,
                builder: (BuildContext context) {
                  return DetailTab(movie: movies[i]);
                }),
          );
        },
        child: Container(
          padding: EdgeInsets.only(right: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: CircleAvatar(
              backgroundImage: AssetImage(movies[i].poster),
              radius: 48,
            ),
          ),
        ),
      ),
    );
  }
  return results;
}
