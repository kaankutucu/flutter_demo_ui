import 'package:flutter/material.dart';

class MyColors {
  static Color darkBlue = Color(0xff2446a6),
      lightBlue = Color(0xff3a5fc8),
      lighterBlue = Color(0xff4169d8),
      red = Color(0xfffa9d85);


}

class User {    // profil containerdaki isim tarih ve foroğrafı dinamik olarak çekmek için oluşturduğumuz kod bloğu
  static String fullname = "Mehmet Şahin",
      profilePicture =
          "https://pbs.twimg.com/profile_images/1040597620752826368/TUh3IlKA_400x400.jpg";
}

class DestinationModel {
  final String placeName, imageUrl, date, hotelName;
  DestinationModel({this.placeName, this.imageUrl, this.date, this.hotelName});
}

final List<DestinationModel> destinationsList = [
  DestinationModel(
    date: "22 Kasım, 2020",
    hotelName: "Piramit",
    imageUrl: "https://img-s1.onedio.com/id-57af5bf5dea0441669827d5e/rev-0/w-635/listing/f-jpg-webp/s-777f2e493a970143be207d97df990a9344862600.webp",
    placeName: "Mısır",
  ),
  DestinationModel(
    date: "15 Haziran, 2020",
    hotelName: "Ayasofya",
    imageUrl: "https://img.piri.net/mnresize/840/-/resim/imagecrop/2019/03/28/12/03/resized_28a2b-9ca5ccbagetimagebyurl.jpg",
    placeName: "Ayasofya",
  ),
  DestinationModel(
    date: "28 Ağustos, 2020",
    hotelName: "Babil",
    imageUrl: "https://yeknurormangoren.files.wordpress.com/2014/04/babilinasmabahceleri1-541x3231.jpg?w=888&h=321",
    placeName: "Babil",
  ),
];
