import 'package:flutter/material.dart';
import 'package:flutter_localization/app_localization.dart';

class CustomView extends StatelessWidget {
  final String heading;
  final String title;
  final String subtitle;
  final String description;

  const CustomView(
      {Key key, this.heading, this.title, this.subtitle, this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalization.of(context).getTranslatedValues(heading),
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: 80,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                AppLocalization.of(context).getTranslatedValues(title),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(AppLocalization.of(context).getTranslatedValues(subtitle)),
              SizedBox(
                height: 5,
              ),
              Text(AppLocalization.of(context).getTranslatedValues(description))
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
        )
      ],
    );
  }
}
