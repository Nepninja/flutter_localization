import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/app_localization.dart';
import 'package:flutter_localization/bloc/language_bloc.dart';
import 'package:flutter_localization/custom_view.dart';

class NextPage extends StatefulWidget {
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  List languages = ["English", "French"];
  String lang = "English";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  CustomView(
                    heading: "professional_history",
                    title: "river_tech",
                    subtitle: "intern",
                    description: "worked_on_small_feature",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomView(
                    heading: "educational_history",
                    title: "harvard_university",
                    subtitle: "nov",
                    description: "specialized_on_computer_science",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    AppLocalization.of(context).getTranslatedValues('skills'),
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Java, Flutter, Python, Html Css, SQLite",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomView(
                    heading: "awards_and_achievements",
                    title: "world_largest_hackathon",
                    subtitle: "winner",
                    description: "specialized_on_health_care",
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                      child: FlatButton(
                    color: Colors.white,
                    onPressed: () {},
                    child: Text(
                      AppLocalization.of(context).getTranslatedValues('hire_me'),
                      style: TextStyle(color: Color(0xff728def)),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35)),
                  )),
                ],
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xff728def),
        elevation: 0,
        actions: [
          DropdownButton(
            dropdownColor: Colors.deepPurpleAccent[100],
            underline: SizedBox(),
            value: lang,
            onChanged: (value) {
              setState(() {
                if (value == 'French') {
                  BlocProvider.of<LanguageBloc>(context)
                    ..add(LoadLanguage(locale: Locale('fr', '')));
                } else
                  BlocProvider.of<LanguageBloc>(context)
                    ..add(LoadLanguage(locale: Locale('en', 'EN')));

                lang = value;
              });
            },
            items: languages.map((value) {
              return DropdownMenuItem(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(color: Colors.white),
                ),
              );
            }).toList(),
          ),
        ],
      ),
      backgroundColor: Color(0xff728def),
    );
  }
}
