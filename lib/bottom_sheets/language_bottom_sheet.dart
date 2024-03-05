import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Language extends StatelessWidget {
  Language({super.key});
  bool IsEnglish = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.english,
                style: GoogleFonts.elMessiri(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                  color: IsEnglish ? Colors.brown : Colors.black,
                ),
              ),
              IsEnglish
                  ? Icon(
                      Icons.done,
                      color: Colors.brown,
                    )
                  : SizedBox(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AppLocalizations.of(context)!.arabic,
                  style: GoogleFonts.elMessiri(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                      color: IsEnglish ? Colors.brown : Colors.black)),
              IsEnglish
                  ? Icon(
                      Icons.done,
                      color: Colors.brown,
                    )
                  : SizedBox(),
            ],
          ),
        ],
      ),
    );
  }
}
