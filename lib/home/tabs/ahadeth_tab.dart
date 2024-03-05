import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic/hadethmodel.dart';
import 'package:islamic/headth_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AhdethTab extends StatefulWidget {
   AhdethTab({super.key});

  @override
  State<AhdethTab> createState() => _AhdethTabState();
}

class _AhdethTabState extends State<AhdethTab> {
List<HadethModel>allAhdeth=[];

  @override
  Widget build(BuildContext context) {
    if(allAhdeth.isEmpty){
      loadHadethFile();
    }


    return Column(

      crossAxisAlignment: CrossAxisAlignment.stretch,
       children: [
         Image.asset("assets/images/ahadeth.png",width:312,height: 219 ,),
         Divider(
           thickness: 3,
           color: Color(0xFFB7935F),
         ),
         Text(AppLocalizations.of(context)!.ahadeth,
           style: GoogleFonts.elMessiri(
               fontSize:25 ,
               fontWeight: FontWeight.w600,
           ),
           textAlign: TextAlign.center,
         ),
         Divider(thickness: 3,
             color: Color(0xFFB7935F)),

    Expanded(
      child: ListView.separated(
        separatorBuilder: (context,index)=>Divider(
            thickness: 1,
            endIndent: 50,
            indent: 50,
            color: Color(0xFFB7935F)
        ),
        itemBuilder: (context,index){
             return InkWell(
               onTap: (){
                 Navigator.pushNamed(context, HadethDetails.routName,
                 arguments: allAhdeth[index],);
               },
               child: Text(

                 allAhdeth[index].title,textAlign: TextAlign.center,
               style: GoogleFonts.elMessiri(fontSize: 25),

               ),
             );

      },
      itemCount: allAhdeth.length,
      ),
    )
       ],
    );
  }

  loadHadethFile() async{

       rootBundle.loadString("assets/files/ahadeth.txt").then(( hedathFile){

        List<String>ahadeath= hedathFile.split("#");
       for(int i=0;i<ahadeath.length;i++){
         String hadethone= ahadeath[i];
         List<String>hedathLines=hadethone.trim().split("\n");
         String title=hedathLines[0];
         hedathLines.removeAt(0);
         List<String>content=hedathLines;
         print(title);
         HadethModel hadethmodel=HadethModel(title, content);
         allAhdeth.add(hadethmodel);
         setState(() {

         });

       }
       });
   }
}
