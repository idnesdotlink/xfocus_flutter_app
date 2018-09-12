import 'package:flutter/material.dart';
import 'package:xfocus_mobile/components/app_bar.dart' show VersionOne;

// Widget _hero = ;

class CrossanimationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VersionOne(
        pageTitle: 'Cross Animation'
      ),
      body: GestureDetector(
        child: Hero(
  tag: 'imageHero',
  child: Container(
            width: 200.0,
            height: 200.0,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/png/logo-50.png',
                  ),
                ),
              ),
            ),
          ),
),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return CrossanimationdetailScreen();
          }));
        },
      ),
    );
  }
}

class CrossanimationdetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VersionOne(
        pageTitle: 'Cross Animation Detail'
      ),
      body: GestureDetector(
        child: Center(
          child: Hero(
  tag: 'imageHero',
  child: Container(
            width: 200.0,
            height: 200.0,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/png/logo-50.png',
                  ),
                ),
              ),
            ),
          ),
),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}