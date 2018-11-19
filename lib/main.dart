import 'package:flutter/material.dart';
import 'city_picker.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: new MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          CityPicker.showCityPicker(
            context,
            selectProvince: (province) {
              print(province);
            },
            selectCity: (city) {
              print(city);
            },
            selectArea: (area) {
              print(area);
            },
          );
        },
        child: new Icon(Icons.panorama_fish_eye),
        tooltip: '三级联动',
      ),
    );
  }
}
