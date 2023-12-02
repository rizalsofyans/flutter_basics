import 'package:flutter/material.dart';

class PersonItem extends StatelessWidget {
  final Map<String, dynamic> data;

  PersonItem({required this.data});

  @override
  Widget build(BuildContext context) {
    List personFavSport = data['favSport'];

    return Card(
      color: Colors.grey.shade100,
      margin: EdgeInsets.all(8.0),
      child: Container(
        margin: EdgeInsets.all(4.0),
        padding: EdgeInsets.all(4),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(),
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${data['Name']}',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text('${data['Age']}'),
                  ],
                )
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: personFavSport
                    .map((color) => Container(
                          child: Text(color),
                          margin: EdgeInsets.fromLTRB(0, 12, 8, 0),
                          padding: EdgeInsets.fromLTRB(8, 4, 8, 4),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ))
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
