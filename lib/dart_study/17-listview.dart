import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
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
        body: ListView.builder(itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.favorite_border),
            title: Text('$index 10号技师'),
            subtitle: Text('棒棒的'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Scaffold.of(context).showSnackBar(SnackBar(
                content: Text('datas'),
                duration: Duration(milliseconds: 4000),
                backgroundColor: Colors.red,
              ));
            },
          );
        }),
//        body: _buildListView1(),
        //  body: _buildListView(),
      ),
    );
  }

  ListView _buildListView1() {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: List.generate(15, (index) {
        return Center(
          child: Container(
            color: Colors.blue,
            child: Text(
              'index $index',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        );
      }),
    );
  }

  ListView _buildListView() {
    return ListView(
      children: <Widget>[
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
      ],
    );
  }
}
