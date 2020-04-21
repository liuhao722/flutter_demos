package com.yunzhe.first_flutter_demo

import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant

/**
 * Author:  LiuHao
 * Email:   114650501@qq.com
 * TIME:    2020/4/1 --> 11:05 AM
 * Description: MainActivity 简述：
 */
class MainActivity: io.flutter.embedding.android.FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine);
    }
}