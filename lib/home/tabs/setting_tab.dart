import 'package:flutter/material.dart';
import 'package:islamic/bottom_sheets/language_bottom_sheet.dart';

import '../../bottom_sheets/Theme_bottom_sheet.dart';

class settingTab extends StatelessWidget {
  const settingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Language",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  isDismissible: true,
                  builder: (context) {
                    return Container(
                      height: MediaQuery.of(context).size.height * .7,
                      child: Language(),
                    );
                  });
            },
            child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: Colors.brown)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Text("Arabic"),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Theme",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: Colors.brown)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,


                          builder: (context) {

                            return ThemeBottomSheet();

                          });
                    },
                    child: Text("Light")),
              )),

        ],
      ),
    );
  }
}
