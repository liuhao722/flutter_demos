import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image实例demo'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Image.network(
                'http://www.baidu.com/img/bd_logo1.png?where=super',
                width: 100,
                height: 100,
              ),
              Image.asset(
                'images/icon_111.jpg',
                width: 100,
                height: 100,
              ),
              MemoryImageWidget(), //缓存中获取image
              FileImageWidget(), //从文件中加载image
            ],
          ),
        ),
      ),
    );
  }
}

class FileImageWidget extends StatefulWidget {
  @override
  _FileImageWidgetState createState() => _FileImageWidgetState();
}

class _FileImageWidgetState extends State<FileImageWidget> {
  File _image;

  getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: _image == null
              ? Text('未选择图片')
              : Image.file(
                  _image,
                  width: 100.0,
                  height: 100.0,
                ),
        ),
        FlatButton(
          onPressed: getImage,
          child: Text(
            '选择图片',
            style: TextStyle(color: Color(0xff0000ff)),
          ),
        ),
      ],
    );
  }
}

/**
 * 缓存中获取image
 */
class MemoryImageWidget extends StatefulWidget {
  @override
  _MemoryImageWidgetState createState() => _MemoryImageWidgetState();
}

class _MemoryImageWidgetState extends State<MemoryImageWidget> {
  Uint8List bytes;

  @override
  void initState() {
    super.initState();
    rootBundle.load('images/icon_111.jpg').then((data) {
      if (mounted) {
        setState(() {
          bytes = data.buffer.asUint8List();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final _decoration = BoxDecoration(
      image: bytes == null ? null : DecorationImage(image: MemoryImage(bytes)),
    );
    return Container(
      width: 200.0,
      height: 200.0,
      decoration: _decoration,
    );
  }
}
