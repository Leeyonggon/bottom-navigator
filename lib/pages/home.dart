import 'dart:math';
import 'image_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

//sliver는 widget이 아님

/*class Home extends StatelessWidget {
  const Home({super.key});

  void _onRefresh() async {
    await Future.delayed(Duration(milliseconds: 1000));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // sliver 관련 위젯들만 올 수 있음
          SliverAppBar(
            title: Text('Sliver Test'),
            expandedHeight: 200,
            backgroundColor: Colors.blueGrey,
            leading: Icon(Icons.arrow_back),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.refresh)),
              Icon(Icons.settings),
              SizedBox(
                width: 10,
              )
            ],
            flexibleSpace: FlexibleSpaceBar(
              //sliverappbar가 늘러나거나 줄어들경우 유연하게 타이틀 크기 조절
              background: Image.asset(
                'image/first.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            // 일반 위젯 사용할 수 있게 함
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: 20, // bulider의 index번째를 나타냄
              primary: false, // 스크롤시키기 위함
              shrinkWrap: true, // 스크롤시키기 위함
              itemBuilder: (context, index) {
                return ImageWidget(
                  index: index,
                );
              }, //어떤 View를 그려줌 / (context, index), return이 꼭 있어야함
            ),
          ),
        ],
      ),
    );
  }
}*/

class RHome extends StatefulWidget {
  const RHome({super.key});

  @override
  State<RHome> createState() => _RHomeState();
}

class _RHomeState extends State<RHome> {
  Future<void> _onRefresh() {
    return Future.delayed(Duration(milliseconds: 1000));
  }

  ImageWidget imageWidget = ImageWidget(index: 20);

  int num = 20;

  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SmartRefresher(
        enablePullDown: true,
        enablePullUp: true,
        onRefresh: () {
          setState(() {
            Image.network('https://source.unsplash.com/random?sig=$num');
          });
          _onRefresh();
          _refreshController.refreshCompleted();
        },
        controller: _refreshController,
        child: CustomScrollView(
          slivers: [
            // sliver 관련 위젯들만 올 수 있음
            SliverAppBar(
              title: Text('Sliver Test'),
              expandedHeight: 200,
              backgroundColor: Colors.blueGrey,
              leading: Icon(Icons.arrow_back),
              actions: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        Image.network(
                            'https://source.unsplash.com/random?sig=$num');
                      });
                      _onRefresh();
                    },
                    icon: Icon(Icons.refresh)),
                Icon(Icons.settings),
                SizedBox(
                  width: 10,
                )
              ],
              flexibleSpace: FlexibleSpaceBar(
                //sliverappbar가 늘러나거나 줄어들경우 유연하게 타이틀 크기 조절
                background: Image.asset(
                  'image/first.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverToBoxAdapter(
              // 일반 위젯 사용할 수 있게
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: 20, // bulider의 index번째를 나타냄
                primary: false, // 스크롤시키기 위함
                shrinkWrap: true, // 스크롤시키기 위함
                itemBuilder: (context, index) {
                  return ImageWidget(
                    index: index,
                  );
                }, //어떤 View를 그려줌 / (context, index), return이 꼭 있어야함
              ),
            ),
          ],
        ),
      ),
    );
  }
}
