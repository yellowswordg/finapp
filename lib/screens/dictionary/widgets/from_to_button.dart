import 'package:finapp/models/languages.dart';
import 'package:flutter/material.dart';

class FromToButton extends StatelessWidget {
  final String label;

  final Color fromColor;
  final Color toColor;
  final Function onTap;
  final Languages language;
  final Languages buttonLanguage;
  const FromToButton({
    this.label,
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
          Text(label, style: TextStyle(color: fromColor)),
        ],
      ),
    );
  }
}
