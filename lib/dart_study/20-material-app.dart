import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MaterialApp',
      routes: {'/other': (BuildContext context) => OtherPage()},
//      initialRoute: '/other',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final _widgetOptions = [
    Text('信息'),
    Text('通讯录'),
    Text('发现'),
    Text('我'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MaterialApp示例',
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
        leading: Icon(Icons.star),
        actions: <Widget>[
          Icon(Icons.search),
          Icon(Icons.more_vert),
        ],
      ),
      body: Center(child: _widgetOptions.elementAt(_currentIndex)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/other');
        },
        tooltip: '路由跳转',
        foregroundColor: Color(0xffffffff),
        backgroundColor: Color(0xff000000),
        //阴影
        elevation: 10.0,
        child: Icon(Icons.arrow_forward),
//        shape: RoundedRectangleBorder(),//形状 方形
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text('信息'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            title: Text('通讯录'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.near_me),
            title: Text('发现'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('我'),
          ),
        ],
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://randomuser.me/api/portraits/women/60.jpg'),
              ),
              accountName: Text('Damon'),
              accountEmail: Text('114650501@qq.com'),
              otherAccountsPictures: <Widget>[Icon(Icons.camera_alt)],
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/icon_111.jpg'), fit: BoxFit.fill),
              ),
            ),
            ListTile(
              title: Text(
                'ListTitle',
              ),
              leading: Icon(Icons.favorite_border),
            ),
            Divider(),
            ListTile(
              title: Text(
                'ListTitle',
              ),
              leading: Icon(Icons.favorite_border),
            ),
            Divider(),
            ListTile(
              title: Text(
                'ListTitle',
              ),
              leading: Icon(Icons.favorite_border),
            ),
            Divider(),
            ListTile(
              title: Text(
                'ListTitle',
              ),
              leading: Icon(Icons.favorite_border),
            ),
            Divider(),
            AboutListTile(
              icon: Icon(Icons.error),
              child: Text('关于我们'),
              applicationIcon: Icon(Icons.more),
              applicationName: '我们',
              
            )
          ],
        ),
      ),
    );
  }
}

class OtherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OtherPage'),
      ),
    );
  }
}
