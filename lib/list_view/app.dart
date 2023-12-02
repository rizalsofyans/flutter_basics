import 'package:flutter/material.dart';
import 'chat_item.dart';

class App extends StatelessWidget {
  const App({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Center(child: Text('List View'))),
        body: const ChatListView(),
      ),
    );
  }
}
