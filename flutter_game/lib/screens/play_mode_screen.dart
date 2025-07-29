import 'package:flutter/material.dart';
import 'package:flutter_game/screens/choose_side_screen.dart';

class PlayModeScreen extends StatelessWidget {
  const PlayModeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/cross_.png", width: 100,),
                Image.asset("assets/circle_.png", width: 100,),
              ],
            ),
            SizedBox(height: 50,),
            Text(
              "Choose your play mode",
              style: TextStyle(fontSize: 24, fontFamily: "Roboto"),
            ),
            SizedBox(height: 50,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: Size(300, 50),
                  padding: EdgeInsets.symmetric(vertical: 10),
                  elevation: 10,
                  shadowColor: Colors.blueGrey,
                ),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => ChooseSideScreen(isAi: true)
                    ),
                  );
                },
                child: Text(
                  "With AI",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: "Roboto",
                    color: Colors.white,
                  ),
                ),
            ),
            SizedBox(height: 30,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: Size(300, 50),
                padding: EdgeInsets.symmetric(vertical: 10),
                elevation: 10,
                shadowColor: Colors.grey,
              ),
              onPressed: () {
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => ChooseSideScreen(isAi: false)
                ),
                );
              },
              child: Text(
                "With Friend",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: "Roboto",
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
