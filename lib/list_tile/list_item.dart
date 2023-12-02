import 'package:faker/faker.dart';

class ListItem {
  final String name;
  final String loremSentence;
  final String time;

  ListItem({
    required this.name,
    required this.loremSentence,
    required this.time,
  });
}

List<ListItem> generateListItems() {
  return List.generate(10, (index) {
    return ListItem(
      name: faker.person.name(),
      loremSentence: faker.lorem.sentence(),
      time: faker.date.time(),
    );
  });
}

void sortListItems(List<ListItem> listItems) {
  // Sort the list by the time field in descending order
  listItems.sort((a, b) => b.time.compareTo(a.time));
}
