import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:messenger_ui_clone/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 10.0, bottom: 25, left: 10, right: 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //Logo
                Container(
                  width: MediaQuery.of(context).size.width / 4,
                  child: Image.asset("assets/logo.png"),
                ),
                SizedBox(height: 25),

                //Email or phone number
                TextField(
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Phone Number or Email',
                    hintStyle: TextStyle(fontSize: 16, color: Colors.black38),
                  ),
                ),
                Divider(thickness: 1.4),

                //Password
                TextField(
                  obscureText: true,
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Password',
                    hintStyle: TextStyle(fontSize: 16, color: Colors.black38),
                  ),
                ),

                //Login Button
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 17),
                    color: Colors.blue[700],
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.blue),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: AutoSizeText(
                      'LOG IN',
                      maxLines: 1,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(height: 15),

                //Create New Account Button
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 17),
                    color: Colors.green,
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    onPressed: () {},
                    child: AutoSizeText(
                      'CREATE NEW ACCOUNT',
                      maxLines: 1,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    // Text(
                    //   'CREATE NEW ACCOUNT',
                    //   style: TextStyle(color: Colors.white, fontSize: 25),
                    // ),
                  ),
                ),
                SizedBox(height: 15),

                //Forget Password
                Text(
                  'FORGET PASSWORD?',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
