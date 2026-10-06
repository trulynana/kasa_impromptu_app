import 'package:flutter/material.dart';
import 'package:kasa/assets/colors.dart';
import 'package:word_generator/word_generator.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class KasaHome extends StatefulWidget {
  const KasaHome({super.key});

  @override
  State<KasaHome> createState() => _KasaHomeState();
}

class _KasaHomeState extends State<KasaHome> {

  static const String defaultWord = "Word Bank";

  String username = "Nana";
  final randomWord = WordGenerator();
  String wordBank = defaultWord;

  void updateWord() {
    setState(() {
      wordBank = randomWord.randomNoun();
    });
  }

  void resetWord() {
    setState(() {
      wordBank = defaultWord;
    });
  }

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
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 83, 64, 54),
                gradient: LinearGradient(
                  colors: <Color>[kasaColors.mocha, kasaColors.sandy],
                ),
              ),
              child: Text(
                "Hello $username",
                textAlign: TextAlign.center,
                maxLines: 3,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
          SizedBox(width: 100, height: 50),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                    setState(() {
                      resetWord();
                    });
                  }, 
                  child: Text("Reset Word"),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: kasaColors.cream,
                    backgroundColor: kasaColors.sandy
                  ),
                  ),
                   ElevatedButton(
                onPressed: () {
                  setState(() {
                    updateWord();
                  });
               //   print(wordBank);
                },
                child: Text("Generate Word"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: kasaColors.sandy,
                  foregroundColor: kasaColors.cream
                ),
              )
                ],
              ),
              // ElevatedButton(
              //   onPressed: () {
              //     setState(() {
              //       updateWord();
              //     });
              //     print(wordBank);
              //   },
              //   child: Text("Generate Word"),
              // ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: CircleText(text: wordBank),
              ),
            ],
          ),

          const Padding(
            padding: EdgeInsets.only(right: 140.0),
            child: CircleText(text: "Level"),
          ),

          SizedBox(width: 100, height: 50),

          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/startup');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xffAC7F5E),
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
            ),
            child: Text("Back Home", style: TextStyle(fontSize: 20)),
          ),
        ],
      ),
    );
  }
}

class CircleText extends StatelessWidget {
  const CircleText({
    super.key,
    required this.text,
    this.size = 170,
    this.color = Colors.white,
    this.style,
  });

  final String text;
  final double size;
  final Color color;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      // Keeps text within the square inscribed in the circle (~0.707 * diameter).
      padding: EdgeInsets.all(size * 0.15),
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      child: Text(
        text,
        textAlign: TextAlign.center,
        maxLines: 4,
        overflow: TextOverflow.ellipsis,
        style: style ?? const TextStyle(fontSize: 18),
      ),
    );
  }
}
