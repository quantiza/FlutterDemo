import 'package:flutter/material.dart';
import 'package:fluwx/fluwx.dart' as fluwx;

class WechatDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    fluwx.register(appId:"wxdd693fd70026b215", doOnAndroid: true, doOnIOS: true);

    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
        title: Text('Communication'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          fluwx.share(fluwx.WeChatShareWebPageModel(
            scene: fluwx.WeChatScene.TIMELINE,
            webPage: 'https://www.baidu.com',
            thumbnail: 'hello',)
          );
          },
        child: Text('press'),
      ),
    );
  }
}