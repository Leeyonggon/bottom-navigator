import 'package:flutter/material.dart';
import 'package:flutter_pratice/reponsive/breakpoint.dart';
import 'package:flutter_pratice/reponsive/reponsive_center.dart';
import 'signin.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 가장 기본적인 레이아웃 구조
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('center responsive'),
      ),
      body: SingleChildScrollView(
        //화면의 크기보다 위젯이 더 큰 경우 발생하는 overflow방지
        child: ResponsiveCenter(
          child: SignIn(),
          maxContentWidth: BreakPoint.deskTop,
          padding: EdgeInsets.all(16),
        ),
      ),
    );
  }
}
