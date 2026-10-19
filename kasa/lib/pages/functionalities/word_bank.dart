import 'package:flutter/material.dart';
import 'package:kasa/assets/colors.dart';
import 'package:kasa/pages/kasa_home.dart';
import 'package:word_generator/word_generator.dart';

class WordBankScreen extends StatefulWidget {
  const WordBankScreen({super.key});

  @override
  State<WordBankScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<WordBankScreen> {


  List<String> times = ["1:00", "3:00", "5:00"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffedcdc),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: kasaColors.caramel
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/homepage");
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: kasaColors.cream,
                  ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: CircleText(
              text: "Generate Word", 
              size: 300,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              ),
          ),

          SizedBox(height: 20,),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffAC7F5E),
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
            ),
            
             
            child: Text("Spin Again (1/3)")
            ),
            SizedBox(height: 20,),

          
           DropdownMenu(
           dropdownMenuEntries: [
            DropdownMenuEntry(value: "1 Minute", label: "1:00"),
            DropdownMenuEntry(value: "3 Minutes", label: "3:00"),
            DropdownMenuEntry(value: "5 Minutes", label: "5:00")
           ],
           label: const Text("Select Time"),
           inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Color(0xffAC7F5E)),
            ),
           ),
           
           ),

           SizedBox(height: 20,),
           ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffAC7F5E),
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 90, vertical: 20),
            ),
            
             
            child: Text("Start Timer")
            )
      ],
      ),
    );
  }
}