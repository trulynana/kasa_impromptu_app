import 'package:flutter/material.dart';

class KasaHome extends StatefulWidget {
  const KasaHome({super.key});

  @override
  State<KasaHome> createState() => _KasaHomeState();
}

class _KasaHomeState extends State<KasaHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffedcdc),
      // backgroundColor: Color(0xfffedcdc),
      // appBar: AppBar(
      //  title: Text("Home Page in Development"),

      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 200,
              height: 200,
              child: Text(
                "Home Page in Development",
                textAlign: TextAlign.center,
                maxLines: 3,
                style: TextStyle(
                  fontSize: 30
                ),
                ),
                
            ),

        
          ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/startup');
              },
              style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xffAC7F5E),
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 70, vertical: 20)
          ),
              child: Text(
                "Back Home",
                style: TextStyle(
                  fontSize: 20
                ),
                ),
            ),

      ],
      ),
    );
  }
}