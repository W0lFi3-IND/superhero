import 'package:flutter/material.dart';
class CharacterWid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sh = MediaQuery.of(context).size.height;
    final sw = MediaQuery.of(context).size.width;

    // TODO: implement build
    return Stack(
      children: [

             Padding(
                padding: const EdgeInsets.only(bottom:20.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ClipPath(
                   clipper:Clp() ,
                   child: Container(
                    height: 0.55 *sh,
                    width: 0.9*sw,
                    decoration: BoxDecoration(
                        color: Colors.white,
                    ),),
                 ),
               ),
             ),



      ],
    );
  }
}

class Clp extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path cp = Path();
    double cd = 40;
    cp.moveTo(0,size.height*0.4);
    cp.lineTo(0,size.height-cd);
     cp.quadraticBezierTo(1,size.height-1,0+cd,size.height);
     cp.lineTo(size.width-cd, size.height);
     cp.quadraticBezierTo(
     size.width+1, size.height-1,size.width,size.height-cd);
     cp.lineTo(size.width,0+cd);
     cp.quadraticBezierTo(size.width-1,0, size.width-cd-5, 0+cd/3);
     cp.lineTo(cd,size.height*.29);
    cp.quadraticBezierTo(1,(size.height*.30)+10, 0,size.height*.4);
    return  cp;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}