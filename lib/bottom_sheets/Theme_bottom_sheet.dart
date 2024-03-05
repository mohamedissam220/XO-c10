import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeBottomSheet extends StatelessWidget {
  ThemeBottomSheet({super.key});
  bool IsLight = true;
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
                AppLocalizations.of(context)!.light,
                style: GoogleFonts.elMessiri(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                  color: IsLight ? Colors.brown : Colors.black,
                ),
              ),
              IsLight
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
              Text(AppLocalizations.of(context)!.dark,
                  style: GoogleFonts.elMessiri(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                      color: IsLight ? Colors.brown : Colors.black)),
              IsLight
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
