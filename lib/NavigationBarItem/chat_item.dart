import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../pages/login_page.dart';
import '../widgets/chat.dart';
import '../widgets/create_room.dart';

class ChatItem extends StatelessWidget {
  final createRoom = 'assets/createroom.png';
  final profile = 'assets/profile.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 2,
          child: Icon(
            Icons.person,
            color: Colors.black,
          ),
        ),
        title: AutoSizeText(
          'Chats',
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.camera_alt_outlined,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
          IconButton(
            icon: Icon(
              Icons.edit,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(28)),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 10),

              //Create Room
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CreateRoom(name: 'Create \n Room', profileImg: createRoom),
                    SizedBox(width: 18),
                    CreateRoom(name: 'Girija \n Kandel', profileImg: profile),
                    SizedBox(width: 10),
                    CreateRoom(name: 'Anil  \n Sharma', profileImg: profile),
                    SizedBox(width: 10),
                    CreateRoom(name: 'Sita \n Kandel', profileImg: profile),
                    SizedBox(width: 10),
                    CreateRoom(name: 'Bijay \n pun', profileImg: profile),
                    SizedBox(width: 10),
                    CreateRoom(name: 'Girija \n Kandel', profileImg: profile),
                    SizedBox(width: 10),
                    CreateRoom(name: 'Anil  \n Sharma', profileImg: profile),
                    SizedBox(width: 10),
                    CreateRoom(name: 'Sita \n Kandel', profileImg: profile),
                    SizedBox(width: 10),
                    CreateRoom(name: 'Bijay \n pun', profileImg: profile),
                  ],
                ),
              ),
              SizedBox(height: 20),

              //Chats
              Chat(name: 'Girija Kandel'),
              Chat(name: 'Girija Kandel'),
              Chat(name: 'Girija Kandel'),
              Chat(name: 'Girija Kandel'),
              Chat(name: 'Girija Kandel'),
              Chat(name: 'Girija Kandel'),
              Chat(name: 'Girija Kandel'),
              Chat(name: 'Girija Kandel'),
              Chat(name: 'Girija Kandel'),
            ],
          ),
        ),
      ),
    );
  }
}
