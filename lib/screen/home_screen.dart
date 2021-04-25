import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double windowWidth = MediaQuery.of(context).size.width;
    final double windowHeight = MediaQuery.of(context).size.height;
    // ロゴ 縦横比が約 1:1.75
    final double logoWidth = windowWidth * 0.67;
    final double logoHeight = logoWidth / 1.75;
    return Container(
      color: Colors.white,
      width: windowWidth,
      height: windowHeight,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: (windowWidth - logoWidth) / 2,
            top: windowHeight / 2 - (logoHeight / 1.35), // 1.35は微調整のため
            width: logoWidth,
            child: Column(
              children: [
                Icon(
                  Icons.check_circle,
                  size: 150,
                  color: Colors.lightGreen,
                ),
                Container(
                  child: Text(
                    'ログインが完了しました。\nアプリを閉じてください',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
