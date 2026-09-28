import 'package:flutter/material.dart';
import 'package:kasa/pages/kasa_home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: JustKasa(), 
      routes: {
        '/homepage': (context) => KasaHome(),
        '/startup': (context) => JustKasa()
      },
      debugShowCheckedModeBanner: false);
  }
}

class JustKasa extends StatefulWidget {
  const JustKasa({super.key});

  @override
  State<JustKasa> createState() => _JustKasa();
}

class _JustKasa extends State<JustKasa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffedcdc),
      // appBar: AppBar(
      //   title: Text("Me Kasa", style: TextStyle()),
      //   backgroundColor: Color(0xFFFEDCDC),
      // ),
      body: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
       mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 200,
              height: 190,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white,
              ),
              child: const Center(
                child: Text(
                  "Kasa",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 83, 64, 54)
                   ),
                ),
              ),
            ),
          ),

          SizedBox(
            height: 100,
          ),

          Center(
            child: Container(
              width: 300,
              height: 200,
              child: Text(
                "For Stutterers and Stammerers Alike",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w400,
                  fontSize: 30,
                  color: Color.fromARGB(255, 158, 116, 94)
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            width: 100
          ),
          ElevatedButton(onPressed: () {
            print("Button has been clicked");
            Navigator.pushNamed(context, '/homepage');
          }, 
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xffAC7F5E),
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 70, vertical: 20)
          ),
          child: Text(
            "Start Here",
            style: TextStyle(
              fontSize: 20
            ),
            )
          )
        ],
      ),
    );
  }
}
