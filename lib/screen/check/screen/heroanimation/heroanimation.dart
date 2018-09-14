import 'package:flutter/material.dart';
import 'package:xfocus_mobile/components/app_bar.dart' show VersionOne;
import 'heroanimationdetail.dart';

// Widget _hero = ;

class HeroanimationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VersionOne(pageTitle: 'Cross Animation'),
      body: GestureDetector(
        child: Hero(
          tag: 'imageHero',
          child: Container(
            width: 200.0,
            height: 200.0,
            child: DecoratedBox(
              decoration: BoxDecoration(
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
            return HeroanimationdetailScreen();
          }));
        },
      ),
    );
  }
}


