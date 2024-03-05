import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic/home/tabs/ahadeth_tab.dart';
import 'package:islamic/home/tabs/quran_tab.dart';
import 'package:islamic/home/tabs/radio_tab.dart';
import 'package:islamic/home/tabs/sabha_tab.dart';
import 'package:islamic/home/tabs/setting_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          "assets/images/background.png",
        ),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            "إسلامي",
            style: GoogleFonts.elMessiri(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color(0xffB7935F),
            showSelectedLabels: false,
            iconSize: 25,
            showUnselectedLabels: false,
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.white,
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/ic_quran.png")),
                  label: ""),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/ic_sebha.png")),
                  label: ""),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/ic_radio.png")),
                  label: ""),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/ic_hadeth.png")),
                  label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
            ]),
        body: tabs[index],
      ),
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    SbhaTabs(),
    RadioTab(),
    AhdethTab(),
    settingTab(),
  ];
}
