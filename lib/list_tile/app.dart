import 'package:flutter/material.dart';
import 'list_item.dart';

class App extends StatelessWidget {
  const App({Key? key});

  @override
  Widget build(BuildContext context) {
    List<ListItem> listItems = generateListItems();
    sortListItems(listItems);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('List Tile'),
        ),
        body: ListView.builder(
          itemCount: listItems.length,
          itemBuilder: (context, index) {
            var item = listItems[index];
            return ListItemWidget(item: item);
          },
        ),
      ),
    );
  }
}

class ListItemWidget extends StatelessWidget {
  final ListItem item;

  const ListItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(4, 0, 4, 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.grey.shade200,
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(8),
        title: Text(item.sportName),
        subtitle: Text(
          item.loremSentence,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        leading: const CircleAvatar(),
        trailing: Text(item.time.toString()),
      ),
    );
  }
}
