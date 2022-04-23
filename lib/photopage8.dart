import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class PhotoPage8 extends StatefulWidget {
  const PhotoPage8({Key? key}) : super(key: key);

  @override
  State<PhotoPage8> createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("PhotoPage8"),),
    );
  }
}

class Photo_Page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //建立AppBar
    final appBar = AppBar(
      title: Text('瀏覽影像'),
    );
    const images = <String>[
      'assets/image_8.png',
      'assets/image_1.png',
      'assets/image_2.png',
      'assets/image_3.png',
      'assets/image_4.png',
      'assets/image_5.png',
      'assets/image_6.png',
      'assets/image_7.png',
    ];
    var imgBrowser = _ImageBrowser(GlobalKey<_ImageBrowserState>(), images);

    //建立App操作畫面
    final previousBtn = FlatButton(
      child: Image.asset('assets/previous.png'),
      onPressed: () {
        imgBrowser.previousImage();
      },
    );
    final nextBtn = FlatButton(
      child: Image.asset('assets/next.png'),
      onPressed: () {
        imgBrowser.previousImage();
      },
    );

    final widget = Center(
      child: Stack(
          children: <Widget>[
            Container(
              child: imgBrowser,
              margin: EdgeInsets.symmetric(vertical: 10),
            ),
            Container(
              child: Row(
                children: <Widget>[previousBtn, nextBtn],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              margin: EdgeInsets.symmetric(vertical: 10),
            )
          ],
          alignment: Alignment.topCenter
      ),
    );
    //結合AppBar和App操作畫面
    final appphotopage = Scaffold(
      appBar: appBar,
      body: widget,
    );
    return appphotopage;
  }
}

class _ImageBrowser extends StatefulWidget{
  final GlobalKey<_ImageBrowserState> _key;
  List<String> _images;
  int _imageIndex;

  _ImageBrowser(this._key, this._images) : super(key: _key) {
    _imageIndex = 0;
  }

  @override
  State<StatefulWidget> createState() => _ImageBrowserState();

  previousImage() => _key.currentState.previousImage();
  nextImage() => _key.currentState.nextImage();
}

class _ImageBrowserState extends State<_ImageBrowser> {
  @override
  Widget build(BuildContext context) {
    var img = PhotoView(
        imageProvider: AssetImage(widget._images[widget._imageIndex]),
        minScale: PhotoViewComputedScale.contained * 0.6,
        maxScale: PhotoViewComputedScale.covered,
        enableRotation: false,
        backgroundDecoration: const BoxDecoration(
          color: Colors.blue,
        ));
    return img;
  }

  previousImage() {
    widget._imageIndex = widget._imageIndex == 0
        ? widget._images.length - 1
        : widget._imageIndex - 1;
    setState(() {});
  }

  nextImage() {
    widget._imageIndex = ++widget._imageIndex % widget._images.length;
    setState(() {});
  }
}