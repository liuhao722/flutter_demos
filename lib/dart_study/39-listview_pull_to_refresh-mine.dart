import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List list = List();
  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _refresh();
    _scrollController = ScrollController()
      ..addListener(() {
        //判断是否滑到底
        if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent) {
          _loadMore();
        }
      });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  Future _loadMore() async {
    await Future.delayed(Duration(seconds: 2), () {
      setState(() {
        list.addAll(
            List.generate(Random().nextInt(5) + 1, (i) => 'more Item $i'));
      });
    });
  }

  Future<void> _refresh() async {
    await Future.delayed(Duration(seconds: 2), () {
      setState(() {
        list = List.generate(Random().nextInt(20) + 15, (i) => 'Item $i');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('下拉刷新'),
      ),
      body: Center(
          child: RefreshIndicator(
        child: ListView.builder(itemBuilder: null),
        onRefresh: _refresh,
      )),
    );
  }
}
