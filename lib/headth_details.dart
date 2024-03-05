import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic/hadethmodel.dart';

class HadethDetails extends StatelessWidget {
  HadethDetails({super.key});
  static const String routName="ahadethDetail";

  @override
  Widget build(BuildContext context) {
    var model=ModalRoute.of(context)!.settings.arguments as HadethModel;
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            model.title,
            style: GoogleFonts.elMessiri(
                fontSize: 30, fontWeight: FontWeight.w300),
          ),
        ),
        body: model.content.isEmpty
            ? Center(child: CircularProgressIndicator())
            : Container(
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: ListView.builder(
              itemCount: model.content.length,
              itemBuilder: (context, index) {
                return Text(
                  model.content[index],

                  style: GoogleFonts.elMessiri(fontSize: 18),
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                );
              }),
        ),
      ),
    );;
  }
}
