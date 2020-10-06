import 'package:finapp/models/language.dart';
import 'package:flutter/material.dart';

class FromToButton extends StatelessWidget {
  final String from;
  final String to;
  final Color fromColor;
  final Color toColor;
  final Function onTap;
  final Language language;
  final Language buttonLanguage;
  const FromToButton({
    this.from,
    this.to,
    this.fromColor,
    this.toColor,
    this.onTap,
    this.language,
    this.buttonLanguage,
  });

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: language == buttonLanguage ? 0 : 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.symmetric(vertical: 15),
      color: Theme.of(context).primaryColor,
      onPressed: () => onTap(),
      child: Row(
        children: [
          Text(from, style: TextStyle(color: fromColor)),
          Icon(
            Icons.keyboard_arrow_right,
            size: 12,
            color: Colors.grey,
          ),
          Text(to, style: TextStyle(color: toColor)),
        ],
      ),
    );
  }
}