import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() {
    print('chat widget create');
    return _ChatPageState();
  }
}

class _ChatPageState extends State<ChatPage>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
    print('chat init state');
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    print('chat state build');
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("微信"),
          centerTitle: true,
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
