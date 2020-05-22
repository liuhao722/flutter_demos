import 'package:flutter/material.dart';
import 'package:first_flutter_demo/second_product_demo/common/event_bus.dart';
import 'package:first_flutter_demo/second_product_demo/constants/constants.dart'
    show AppColors;
import 'package:first_flutter_demo/second_product_demo/pages/login_web_page.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List menuTitles = [
    '我的消息',
    '阅读记录',
    '我的博客',
    '我的问答',
    '我的活动',
    '我的团队',
    '邀请好友',
  ];
  List menuIcons = [
    Icons.message,
    Icons.print,
    Icons.error,
    Icons.phone,
    Icons.send,
    Icons.people,
    Icons.person,
  ];

  String userAvatar;
  String userName;

  @override
  void initState() {
    super.initState();
    //尝试显示用户信息
    _showUerInfo();
    eventBus.on<LoginEvent>().listen((event) {
      //TODO
      //获取用户信息并显示
    });
    eventBus.on<LogoutEvent>().listen((event) {
      //TODO
    });
  }

  _showUerInfo() {
    //
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          if (index == 0) {
            return _buildHeader();
          }
          index -= 1;
          return ListTile(
            leading: Icon(menuIcons[index]),
            title: Text(menuTitles[index]),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              //TODO
            },
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemCount: menuTitles.length + 1);
  }

  _login() async {
    final result = await Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => LoginWebPage()));
    if (result != null && result == 'refresh') {
      //登录成功
      eventBus.fire(LoginEvent());
    }
  }

  Container _buildHeader() {
    return Container(
      height: 150.0,
      color: Color(AppColors.APP_THEME),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //头像
            GestureDetector(
              child: Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Color(0xffffffff),
                    width: 2.0,
                  ),
                  image: DecorationImage(
                    image: AssetImage('images/ic_avatar_default.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              onTap: () {
                //执行登录
                _login();
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '点击头像登录',
              style: TextStyle(color: Color(0xffffffff)),
            ),
            //用户名
          ],
        ),
      ),
    );
  }
}

void main() {
  /**
   * 是Dart 对象的基类，当你定义： object o =xxx ;时这个时候系统会认为o 十个对象，
   * 你可以调用o的toString()和hashCode()方法因为Object 提供了这些方法，但是如果你尝试调用o.foo()时，
   * 静态类型检查会运行报错。综上不难看出dynamic 与object 的最大的区别是在静态类型检查上。
   */
  Object obj = "sss";
  dynamic dc = 'sss';
  var v = "sss";

  //编译时不进行检查，运行时检查
  dc.too();

  //  编译时检查
//  v.too();
//  obj.too();
}
