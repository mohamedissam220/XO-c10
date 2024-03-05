import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metro_icons/metro_icons.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Container(
          margin: EdgeInsets.only(top: 150),
            child: Image.asset("assets/images/radio.png",width:412 ,height: 222,)),
        Text("إذاعة القرآن الكريم",
          style: GoogleFonts.elMessiri(
              fontSize: 25,fontWeight: FontWeight.w600,
          ),),
        SizedBox(height: 50,),
        const Row(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Icon(MetroIcon.next,color: Color(0xFFB7935F),),),
            Expanded(child: Icon(FontAwesomeIcons.play,color: Color(0xFFB7935F),)),
            Expanded(child: Icon(MetroIcon.next,color: Color(0xFFB7935F))),
          ],
        ),


      ],
    );
  }
}
