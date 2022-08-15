import 'package:flutter/material.dart';

class CreateRoom extends StatelessWidget {
  final name;
  final profileImg;

  const CreateRoom({Key? key, this.name, this.profileImg}) : super(key: key);
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 27.0,
          backgroundColor: Colors.grey[400],
          backgroundImage: AssetImage(
            profileImg,
          ),
        ),
        Container(
          child: Text(
            name,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
