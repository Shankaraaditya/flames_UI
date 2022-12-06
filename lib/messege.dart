import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Messege extends StatelessWidget {
  final String contact;
  bool read = false;
  bool typing = false;
  bool verified = false;
  final String img;
  final String time;
  Messege(
      {Key? key,
      required this.contact,
      required this.read,
      required this.typing,
      required this.img,
      required this.time,
      required this.verified})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
            leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/' + img + '.jpg')),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(time),
                SizedBox(
                  height: 5,
                ),
                (!read)
                    ? Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Text(
                          '1',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                      )
                    : Text('')
              ],
            ),
            title: Row(
              children: [
                Text(
                  contact + ' ',
                  style: GoogleFonts.nunito(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                verified
                    ? Icon(
                        Icons.verified,
                        color: Colors.blue,
                        size: 20,
                      )
                    : Text('')
              ],
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
