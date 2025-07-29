import 'package:flutter/material.dart';
import 'package:flutter_game/screens/game_screen.dart';

class ChooseSideScreen extends StatefulWidget {
  final bool isAi;
  const ChooseSideScreen({super.key, required this.isAi});

  @override
  State<ChooseSideScreen> createState() => _ChooseSideScreenState();
}

class _ChooseSideScreenState extends State<ChooseSideScreen> {

  String selectedSide = "X";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back, color: Colors.black, size: 26,)
        ),
        title: Text(
          "Choose Side",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Pick your side",
              style: TextStyle(fontSize: 24, fontFamily: "Roboto"),
            ),
            SizedBox(height: 60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.asset("assets/cross_.png", width: 150, fit: BoxFit.cover,),
                    Transform.scale(
                      scale: 1.5,
                      child: Radio(
                        value: "X",
                        groupValue: selectedSide,
                        activeColor: Colors.green,
                        onChanged: (value) {
                          setState(() {
                            selectedSide = value!;
                          });
                        },
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Column(
                  children: [
                    Image.asset("assets/circle_.png", width: 150, fit: BoxFit.cover,),
                    Transform.scale(
                      scale: 1.5,
                      child: Radio(
                        value: "O",
                        groupValue: selectedSide,
                        activeColor: Colors.red,
                        onChanged: (value) {
                          setState(() {
                            selectedSide = value!;
                          });
                        },
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 50,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 50),
                backgroundColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 10),
                elevation: 10,
                shadowColor: Colors.grey,
              ),
                onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GameScreen(
                          playerSide: selectedSide,
                          isAi: widget.isAi,
                        )
                    )
                );
                },
                child: Text(
                  "Continue",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: "Roboto",
                    color: Colors.black54,
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
