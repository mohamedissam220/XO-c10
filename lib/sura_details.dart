import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic/sura_model.dart';

class SuraDetails extends StatefulWidget {
  SuraDetails({super.key});
  static const String routeName = "SuraDetails";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var suraModel = ModalRoute.of(context)!.settings.arguments as SuraModel;
    Future.delayed(Duration(seconds: 1), () {
      readSura(suraModel.index);
    });

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
            suraModel.name,
            style: GoogleFonts.elMessiri(
                fontSize: 30, fontWeight: FontWeight.w300),
          ),
        ),
        body: verses.isEmpty
            ? Center(child: CircularProgressIndicator())
            : Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: ListView.builder(
                    itemCount: verses.length,
                    itemBuilder: (context, index) {
                      return Text(
                        "${verses[index]} (${index+1})",

                        style: GoogleFonts.elMessiri(fontSize: 18),
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.rtl,
                      );
                    }),
              ),
      ),
    );
  }

  void readSura(int index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");

    List<String> suraLines = sura.split("\n");
    verses = suraLines;
    print(verses);
    setState(() {});
  }
}
