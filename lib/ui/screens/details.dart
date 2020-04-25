import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hotel_booking/global.dart';

class DetailsScreen extends StatelessWidget {
  final int id;

  const DetailsScreen({Key key, this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(                        // tıklandığında gezi ile alakalı sayfaya atan kod bloğu
      backgroundColor: Color(0xff2446a6),
      body: SafeArea(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Image.network(   //generic olarak oluşturulan liste ile  fotografı bastırıyoruz
                            destinationsList[id].imageUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          left: 5,
                          top: 5,
                          child: IconButton(
                            icon: Icon(
                              Icons.chevron_left,
                              color: Colors.white,
                            ),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          height: 70,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.transparent,
                                  MyColors.darkBlue,
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "${destinationsList[id].hotelName}",    // generic olarak list item ile gezilecek yerin ismini getiri
                            style: Theme.of(context).textTheme.display1.apply(
                                  color: Colors.white,
                                ),
                          ),
                          Text(
                            "${destinationsList[id].placeName} - ${destinationsList[id].date}", // burada adres ve id göre tarihi getiriyoruz
                            style: Theme.of(context)
                                .textTheme
                                .subtitle
                                .apply(color: Colors.white70),
                          ),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(         //oluşturulan text yazılarını deyay sayfasında görüntülenmesini sağlıyoruz
                                    "150 TL",
                                    style: Theme.of(context)
                                        .textTheme
                                        .display1
                                        .apply(color: Colors.white),
                                  ),
                                  Text(
                                    "4 Gece",    //oluşturulan text yazılarını deyay sayfasında görüntülenmesini sağlıyoruz
                                    style: Theme.of(context)
                                        .textTheme
                                        .body2
                                        .apply(color: Colors.white70),
                                  )
                                ],
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                child: Stack(
                                  children: <Widget>[
                                    Positioned.fill(
                                      child: CircularProgressIndicator(
                                        value: .25,
                                        backgroundColor: MyColors.lighterBlue,
                                        valueColor: AlwaysStoppedAnimation(
                                            Colors.white),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Icon(
                                        Icons.brightness_3,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "24 Gün",
                                    style: Theme.of(context)
                                        .textTheme
                                        .display1
                                        .apply(color: Colors.white),
                                  ),
                                  Text(
                                    "Sonra bitecek",
                                    style: Theme.of(context)
                                        .textTheme
                                        .body2
                                        .apply(color: Colors.white70),
                                  )
                                ],
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                child: Stack(
                                  children: <Widget>[
                                    Positioned.fill(
                                      child: CircularProgressIndicator(
                                        value: .25,
                                        backgroundColor: MyColors.lighterBlue,
                                        valueColor: AlwaysStoppedAnimation(
                                            Colors.white),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Icon(
                                        Icons.calendar_today,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(   //yanda acılan popup olusturmak ıcın kullanılan kod blogu
              width: MediaQuery.of(context).size.width / 5,
              color: MyColors.lighterBlue,
              child: Column(
                children: <Widget>[
                  Expanded(   //bu sınıf ıle olusturulan kod blogunu dısarı tasmamasını saglıyoruz
                    child: IconButton(
                      icon: Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Icon(
                        Icons.map,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Icon(
                        Icons.cloud,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(45),
                          ),
                          color: MyColors.red,
                        ),
                        child: Transform.rotate(
                          angle: -pi / 2,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  "Vazgeç",
                                  style: Theme.of(context)
                                      .textTheme
                                      .body1
                                      .apply(color: Colors.white),
                                ),
                              ),
                              Icon(Icons.clear, color: Colors.white60),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
