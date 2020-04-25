import 'package:flutter/material.dart';
import 'package:hotel_booking/ui/widgets/mybottomnavbaritem.dart';
class MyBottomNavBar extends StatefulWidget {  //alttaki iconları olusturmak ıcın kullanılan kod blogu
  const MyBottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  _MyBottomNavBarState createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int _active = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        MyBottomNavBarItem( //bottomda olusturulan ıconları dınamık olarak ısımlerı ve ıconlarının gelmesı için yazılan kod bloğu
          active: _active,
          id: 0,
          icon: Icons.home,
          text: "Anasayfa",
          function: () {
            setState(() {
              _active = 0;
            });
          },
        ),
        MyBottomNavBarItem( //bottomda olusturulan ıconları dınamık olarak ısımlerı ve ıconlarının gelmesı için yazılan kod bloğu
          active: _active,
          id: 2,
          icon: Icons.flight,
          text: "Biletlerim",
          function: () {
            setState(() {
              _active = 2;
            });
          },
        ),
        MyBottomNavBarItem( //bottomda olusturulan ıconları dınamık olarak ısımlerı ve ıconlarının gelmesı için yazılan kod bloğu
          active: _active,
          id: 3,
          icon: Icons.person,
          text: "Profil",
          function: () {
            setState(() {
              _active = 3;
            });
          },
        ),
      ],
    );
  }
}