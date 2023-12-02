import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'dart:math';

class ChatItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;

  const ChatItem(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    int hour = Random().nextInt(24);
    int minute = Random().nextInt(60);

    String formattedTime = '$hour:${minute.toString().padLeft(2, '0')}';

    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(title),
      subtitle: Text(subTitle),
      trailing: Text(formattedTime),
    );
  }
}

class ChatListView extends StatelessWidget {
  const ChatListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 100,
      itemBuilder: (context, index) {
        int randomIndex = Random().nextInt(500);
        return ChatItem(
          imageUrl: 'https://picsum.photos/id/$randomIndex/200/200',
          title: faker.person.name(),
          subTitle: faker.lorem.sentence(),
        );
      },
    );
  }
}
