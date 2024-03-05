import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SbhaTabs extends StatefulWidget {
   SbhaTabs({super.key});

  @override
  State<SbhaTabs> createState() => _SbhaTabsState();
}

class _SbhaTabsState extends State<SbhaTabs> {

  List<String>tashbeh=[
    "سبحان الله ",
    "الحمد الله ",
    "الله أكبر ",
  ];

     int count=0;
     int curretindex=0;
     tashbah(){


       setState(() {
        count++;
        if(count %30==0){
          count=0;
          curretindex=(curretindex+1)%tashbeh.length;
        }
       });

     }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: Image.asset(
            "assets/images/sebha.png",
            width: 73,
            height: 105,
          ),
        ),
        Center(
            child: InkWell(
              onTap: (){
                 tashbah();
              },
              child: Image.asset(
                        "assets/images/sebhaa.png",
                        width: 232,
                        height: 235,
                      ),
            )),
        SizedBox(height: 20,),
        Text(

          "عدد التسبيحات",
          textAlign: TextAlign.center,
          style:

              GoogleFonts.elMessiri(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,

              ),
        ),
       SizedBox(height: 25,),
        Column(
          children: [
            SizedBox(
              height: 54,
              width:68 ,
              child: ElevatedButton(
                onPressed: (){},
                child: Text("$count"),style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFB7935F),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),

                )

              ),

                ),
            ),
            SizedBox(height: 20,),
            Container(
              width: 160,
              height:51 ,
              padding: EdgeInsets.only(top: 10,left:12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xFFB7935F),

              ),

                child: Text("${tashbeh[curretindex]}",style: GoogleFonts.elMessiri(fontSize: 25,fontWeight: FontWeight.w400,color: Colors.white),)),
          ],
        ),
      ],
    );
  }
}
