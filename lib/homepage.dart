import 'package:flutter/material.dart';
import 'package:superhero/char.dart';
import 'package:superhero/main.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
                  Padding(
                    padding: const EdgeInsets.only(top:50.0),
                    child: Text("Multiverse Superhero's",style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1
                    ),
                    ),
                  ),

            Expanded(child:CharacterWid())
          ],
        ),

      )
    );
  }

}




