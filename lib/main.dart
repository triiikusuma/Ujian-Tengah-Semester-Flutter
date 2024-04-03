import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _iconBool = false;

  IconData _iconLight = Icons.wb_sunny;
  IconData _iconDark = Icons.nights_stay;

  ThemeData _lightTheme = ThemeData(
    primarySwatch: Colors.amber,
    brightness: Brightness.light,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.amberAccent,
    ),
  );

  ThemeData _darkTheme = ThemeData(
    primarySwatch: Colors.red,
    brightness: Brightness.dark,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _iconBool ? _darkTheme : _lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("BIODATA MAHASISWA"),
          backgroundColor: Colors.blue,
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                setState(() {
                  _iconBool = !_iconBool;
                });
              },
              icon: Icon(_iconBool ? _iconDark : _iconLight),
            ),  
      ),
      body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Padding(padding: EdgeInsets.all(8.6),
      child:  Image(
        image: AssetImage(
          "assets/kartu_mahasiswa.png"),
          ),
      ),
      Card(
        color: Colors.lightBlue,
        child: Padding(
          padding: EdgeInsets.all(15.15),
            child: Text("SELAMAT DATANG DI BIODATA MAHASISWA"),
          )
      ),
    ]
      ),
      )
      )
      );
  }
}