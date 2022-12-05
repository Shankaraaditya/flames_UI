import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  final String name;
  final String pic;

  const Status({Key? key, required this.name, required this.pic}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(alignment: Alignment.bottomCenter, children: [
        Container(
          width: 80,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[400],
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/'+pic+'.jpg',
                  ),
                  fit: BoxFit.cover)),
        ),
        Container(
          height: 20,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
          ),
          child: Center(child: Text(name, style: TextStyle(fontWeight: FontWeight.bold),)),
        )
      ]),
    );
  }
}
