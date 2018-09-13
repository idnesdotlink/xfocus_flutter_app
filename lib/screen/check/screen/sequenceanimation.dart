import 'package:flutter/material.dart';
import 'package:xfocus_mobile/animations/slide_right_route.dart';
import 'same_variable_multiple_animations.dart';
import 'sequence_page.dart';
import 'staggered_animation_replication.dart';
import 'package:xfocus_mobile/components/app_bar.dart' show VersionOne;

class SequenceanimationScreen extends StatefulWidget {
  @override
  _SequenceanimationScreenState createState() =>
      _SequenceanimationScreenState();
}

class _SequenceanimationScreenState extends State<SequenceanimationScreen> {
  void _goToScreen(context, Widget screen) {
    Navigator.push(
      context,
      SlideRightRoute(
        widget: screen,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: VersionOne(pageTitle: 'Anim'),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () => _goToScreen(context, SequencePage()),
                child: Text("Sequence"),
              ),
              RaisedButton(
                onPressed: () =>
                    _goToScreen(context, StaggeredAnimationReplication()),
                child: Text("StaggeredAnimationReplication"),
              ),
              RaisedButton(
                onPressed: () =>
                    _goToScreen(context, SameVariableAnimationPage()),
                child: Text("SameVariableAnimationPage"),
              ),
            ],
          ),
        ));
  }
}
