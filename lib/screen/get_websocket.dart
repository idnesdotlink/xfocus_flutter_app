// import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/io.dart';

class GetWebsocket extends StatefulWidget {
  final String url;

  GetWebsocket({Key key, @required this.url}) : super(key: key);

  factory GetWebsocket.withExample() {
    return GetWebsocket(
      url: 'ws://10.0.2.2:9081',
    );
  }

  @override
  _GetWebsocketState createState() => _GetWebsocketState();
}

class _GetWebsocketState extends State<GetWebsocket> {
  dynamic rv;
  dynamic activeUrl = 1;
  bool connectionSwitch = false;
  bool connecting = false;
  WebSocketChannel channel;
  TextEditingController controller;
  List<String> messages = [];
  final Map<int, String> urls = {
    1: 'ws://echo.websocket.org',
    2: 'ws://10.0.2.2:9081'
  };

  List<Widget> _psg() {
    List<Widget> a = [];
    urls.forEach((id, url) {
      a.add(Row(
        children: <Widget>[
          Row(
            children: <Widget>[
              Radio(
                value: id,
                groupValue: activeUrl,
                onChanged: (value) {
                  setState(() {
                    activeUrl = value;
                    connectionSwitch = false;
                    _clearMessage();
                  });
                },
              ),
              Text(url),
            ],
          )
        ],
      ));
    });
    return a;
  }

  @override
  void initState() {
    super.initState();
    // channel = IOWebSocketChannel.connect(widget.url);
    // _connect();
    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Web Socket Echo')),
      body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(urls[activeUrl]),
              Column(
                children: _psg(),
              ),
              Divider(),
              Row(
                children: <Widget>[
                  Switch(
                    value: connectionSwitch,
                    onChanged: (value) {
                      setState(() {
                        connectionSwitch = value;
                        if (value) {
                          _connect();
                        } else {
                          _disconnect();
                          _clearMessage();
                        }
                      });
                    },
                  ),
                  Text(connectionSwitch ? 'connected' : 'disconnected'),
                ],
              ),
              Form(
                child: TextFormField(
                  controller: controller,
                  decoration: InputDecoration(
                    labelText: 'Send To Web Socket',
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: messages.map((message) => Text(message)).toList(),
              ),
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          FocusScope.of(context).requestFocus(new FocusNode());
          _sendMesage();
        },
        tooltip: 'Send',
        child: Icon(
          Icons.send,
        ),
      ),
    );
  }

  void _clearMessage() {
    messages = [];
  }

  void _connect() {
    String url = urls[activeUrl];
    debugPrint('connect $url');
    channel = IOWebSocketChannel.connect(url);
    connecting = true;
    channel.stream.listen((data) => setState(() => messages.add(data)));
  }

  void _disconnect() {
    debugPrint('disconnect');
    channel.sink.close(1000);
    connecting = false;
    connectionSwitch = false;
  }

  void _sendMesage() {
    if (controller.text.isNotEmpty && connecting) {
      channel.sink.add(controller.text);
      controller.clear();
    }
  }

  @override
  void dispose() {
    if (connecting) _disconnect();
    super.dispose();
  }
}
