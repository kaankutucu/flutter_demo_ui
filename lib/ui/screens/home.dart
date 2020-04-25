import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hotel_booking/global.dart';
import 'package:hotel_booking/ui/screens/details.dart';
import 'package:hotel_booking/ui/widgets/mybottomnavbar.dart';

class HomeScreen extends StatelessWidget {    //anasayfanın görülmesi için oluşturulan widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2446a6), //arka plan background değişimi
      body: SafeArea(                //body ekranından dısarı cıkılmamsı ıcın verılen kod
        child: Stack(                //uygulama contaınerlerının ustu uste gelmesı ıcın verılen kod
          children: <Widget>[
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: Row(
                children: <Widget>[
                  Flexible(
                    flex: 3,
                    child: Container(
                      color: Color(0xff4169d8),
                    ),
                  ),
                  Flexible(           // iconların hizalanması için oluşturulan kod
                    flex: 1,          //logo için verilen flex ayarı
                    child: Container(
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 70,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Spacer(),   //flex yapısında satır ve sutun arası boslugu ayarlar
                    Container(
                      child: AppBar(//uygulamanın en ustundekı logo ve ıconların bulundugu yer
                        backgroundColor:Color(0xff2446a6).withOpacity(1),    // appbar arka plan rengi için verilen kod
                        title: Image.asset('images/logo1.png',), // appbardaki logo image
                        actions: <Widget>[//action vererek appbara icon eklemesini saglayacagiz
                          IconButton(
                            icon: Icon(Icons.alarm), onPressed: () {} ,//Appbardaki video iconunu eklemek icin kullanilan kod // onpressed vererek tiklanabilirligini aciyoruz
                          ),
                          IconButton(
                            icon: Icon(Icons.search), onPressed: () {} ,//Appbardaki video iconunu eklemek icin kullanilan kod // onpressed vererek tiklanabilirligini aciyoruz
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ClipRRect(   //sınırların dışında boyamak için kullanılır
                      borderRadius: BorderRadius.circular(15.0), //profil etrafına kenarlık vermek için oluşturulan kod
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff232323), // profil arka plan için verilen kod
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 15.0,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Row(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.network( //profil image çekmek için oluşturulan dinamik kod
                                      User.profilePicture,
                                      fit: BoxFit.cover,
                                      height: 35,
                                      width: 35,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15.0,
                                  ),
                                  Text(
                                    "${User.fullname}",    // kullanıcı ismini otomatik olarak getiren kod
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline
                                        .apply(
                                            color: Colors.white,   // kullanici ismi rengi icin verilen kod
                                            fontWeightDelta: 2),
                                  ),
                                  Spacer(),    // rowlar arasi bosluk birakmak icin verilen kod
                                ],
                              ),
                            ),
                            SizedBox(        //containerlar arasi bosluk vermek icin verilen kod
                              height: 15.0,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25.0),
                              child: RichText(   //profildeki yazilarin renkleri boyutlari ve arka planlari icin yazilan kod blogu
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "124",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline
                                          .apply(
                                              color: Colors.white,
                                              fontWeightDelta: 2),
                                    ),

                                    TextSpan(
                                      text: "Gezgin Puanı",
                                      style: Theme.of(context)
                                          .textTheme
                                          .body2
                                          .apply(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Container( //profil altindaki gezilecek yer tarigini gosteren kod blogu
                              padding: const EdgeInsets.all(25.0),
                              color: MyColors.red,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Sıradaki Gezilecek Yer",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline
                                          .apply(color: Colors.white),
                                    ),
                                  ),
                                  Spacer(),
                                  Text(//profil altindaki gezilecek yer tarigini gosteren kod blogu
                                    "28",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline
                                        .apply(color: Colors.white),
                                  ),
                                  Text(//profil altindaki gezilecek yer tarigini gosteren kod blogu
                                    "Ocak",
                                    style: Theme.of(context)
                                        .textTheme
                                        .body1
                                        .apply(color: Colors.white),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Text(   // onerllen yerleri gosteren kod blogu
                      "Önerilen Yerler",
                      style: Theme.of(context)
                          .textTheme
                          .display1
                          .apply(color: Colors.white),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(  // onerilen yerleri gosteren kod blogu
                      height: MediaQuery.of(context).size.height / 4,
                      child: ListView.builder(  //hazirlanmis olan detail screen dart klasorunu burada cagiriyoruz
                        scrollDirection: Axis.horizontal,
                        itemCount: destinationsList.length,
                        itemBuilder: (ctx, i) { // onerilen yerler kadar container donduren kod
                          return GestureDetector( //Boş olmayan geri çağrılarına karşılık gelen hareketleri tanımaya çalışan classtir.
                            onTap: () => Navigator.push( // tiklandiginda o andki sayfaya gonderir
                              context,
                              MaterialPageRoute(
                                builder: (ctx) => DetailsScreen(id: i),  // detailscreen id sine gore kodu cagirir
                              ),
                            ),
                            child: Container(
                              width: 150,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 11.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Stack(
                                  children: <Widget>[
                                    Positioned.fill(
                                      child: Image.network(
                                        destinationsList[i].imageUrl,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(   // onerilen yerlerdeki ulke isimlerini ve tarihlerini cagirmak icin kullanilan kod blogu
                                      bottom: 0,
                                      left: 0,
                                      right: 0,
                                      child: Container( //yazilarin arka planini olusturmak icin verilen kod
                                        padding: EdgeInsets.symmetric(horizontal: 9.0, vertical: 5.0),
                                        decoration: BoxDecoration(
                                          color: MyColors.lighterBlue,
                                          borderRadius: BorderRadius.only(//image arkasi kenarlastirmalari yapmak icin kullanilan kod
                                            topRight: Radius.circular(15),
                                          ),
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(  //list generic olarak olusturulan kodlari burada fonksiyonlar ile cagirmak icin kullaniyoruz
                                                "${destinationsList[i].placeName}",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white)),
                                            Text( //list generic olarak olusturulan kodlari burada fonksiyonlar ile cagirmak icin kullaniyoruz
                                              "${destinationsList[i].date}",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle
                                                  .apply(color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              height: 70,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(11.0),
                child: MyBottomNavBar(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
