import 'package:flutter/material.dart';

class Messege extends StatelessWidget {
  final String contact;
  bool read = false;
  bool typing = false;
  final String img;
  final String time;
  Messege(
      {Key? key,
      required this.contact,
      required this.read,
      required this.typing,
      required this.img, required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
            leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/images/' + img + '.jpg')),
            trailing: Text(time),
            title: Text(
              contact,
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            subtitle: typing
                ? Text(
                    'typing...',
                    style: TextStyle(color: Colors.red, fontSize: 16),
                  )
                : ((read)
                    ? Text(
                        'Hii',
                        style: TextStyle(fontSize: 16),
                      )
                    : Text(
                        'Hii',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                      ))));
  }
}
