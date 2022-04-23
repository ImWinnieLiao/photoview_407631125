import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photoview_407631125/photopage.dart';
import 'package:photoview_407631125/photopage2.dart';
import 'package:photoview_407631125/photopage3.dart';
import 'package:photoview_407631125/photopage4.dart';
import 'package:photoview_407631125/photopage5.dart';
import 'package:photoview_407631125/photopage6.dart';
import 'package:photoview_407631125/photopage7.dart';
import 'package:photoview_407631125/photopage8.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //This Widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'photo_407631125',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyhomePage(),
    );
  }
}

class MyhomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //建立AppBar
    final appBar = AppBar(
      title: const Text('照片'),
    );

    //建立App操作畫面
    final widget = GridView.count(
      crossAxisCount: 2,
      //physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 20,
      crossAxisSpacing: 20,
      children: <Widget>[
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>PhotoPage()));
          },
          child: Image.asset('assets/image_1.png'),
        ),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>PhotoPage2()));
          },
          child: Image.asset('assets/image_2.png'),
        ),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>PhotoPage3()));
          },
          child: Image.asset('assets/image_3.png'),
        ),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>PhotoPage4()));
          },
          child: Image.asset('assets/image_4.png'),
        ),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>PhotoPage5()));
          },
          child: Image.asset('assets/image_5.png'),
        ),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>PhotoPage6()));
          },
          child: Image.asset('assets/image_6.png'),
        ),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>PhotoPage7()));
          },
          child: Image.asset('assets/image_7.png'),
        ),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>PhotoPage8()));
          },
          child: Image.asset('assets/image_8.png'),
        ),
      ],
    );

    //結合AppBar和App操作畫面
    final appHomePage = Scaffold(
      appBar: appBar,
      body: widget,
    );
    return appHomePage;
  }
}

