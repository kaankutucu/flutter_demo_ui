import 'package:hotel_booking/ui/screens/details.dart';
import 'package:hotel_booking/ui/screens/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  // sag usttekı debug ekranını kaldırmak ıcın kullanılan kod
      title: 'GezelimGörelim',         //uygulamamızın baslıgı
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'OpenSans'
      ),
      home: HomeScreen(), //uygulama ilk açıldığında gelmesini istediğimiz classı burada tanımlıyoruz
      routes: {
        'details' : (ctx) => DetailsScreen(),
      }
    );
  }
}
