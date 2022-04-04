import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselRow {
  String title = "";
  String imgPath = "";
  CarouselRow(String title, String imgPath){
    this.title = title;
    this.imgPath = imgPath;
  }
}

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({Key? key, required this.rows, required this.transitionTime}) : super(key: key);

  final List<CarouselRow> rows;
  final int transitionTime;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 400.0,
        aspectRatio: 16/9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: transitionTime),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
      items: rows.map((rowItem) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: new AssetImage(
                        "${rowItem.imgPath}"),
                    fit: BoxFit.fill,
                  ),
                  borderRadius:
                  BorderRadius.only(topLeft: Radius.circular(80), topRight: Radius.circular(80)),
                ),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      height: 42.0,
                      width: double.infinity,
                      color: Theme.of(context).primaryColor,
                      alignment: Alignment.center,
                      child: Text('${rowItem.title}', style: TextStyle(fontSize: 16.0), textAlign: TextAlign.center,),
                    )
                  ],
                )
            );
          },
        );
      }).toList(),
    );
  }
}
