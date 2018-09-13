import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:xfocus_mobile/components/app_bar.dart' show VersionOne;
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:path_provider/path_provider.dart';

class MarkdownScreen extends StatefulWidget{
  _MarkdownScreenState createState()=>  _MarkdownScreenState();
}


class _MarkdownScreenState extends State<MarkdownScreen> {
  Directory appDocDir;
  String appDocPath;

  @override
  initState() {
    _setAppDocDir();
    super.initState();
  }

  void _setAppDocDir() async {
    appDocDir = await getApplicationDocumentsDirectory();
    appDocPath = appDocDir.path;
    setState(() {
          
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: VersionOne(
        pageTitle: 'MarkDown'
      ),
      body: Container(
        child: Markdown(
        data: '''
# Petunjuk Penggunaan

## Secondary Title

### Tertiary Title

* List 1

  List 1 Content

* List 2

  List 2 Content

  $appDocPath

        '''
      ),
    ),);
  }
}