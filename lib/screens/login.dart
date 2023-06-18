import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:plant/utils/colors_util.dart';
import 'package:plant/screens/home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("CB2B93", hexStringToColor),
          hexStringToColor("9546C4", hexStringToColor),
          hexStringToColor("5E61FA", hexStringToColor),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      ),
    );
    // ignore: dead_code
    child:
    Center(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.black26;
            }
            return Colors.white;
          })),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "assets/google.jpg",
                  width: 40,
                  height: 40,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Login Here",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
