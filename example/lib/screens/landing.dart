// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kurdish_localization_example/classes/language.dart';
import 'package:flutter_kurdish_localization_example/localization/language_constants.dart';
import 'package:flutter_kurdish_localization_example/main.dart';
import 'package:flutter_kurdish_localization_example/router/route_constants.dart';
import 'package:flutter_kurdish_localization_example/util/background_image.dart';
import 'package:flutter_kurdish_localization_example/util/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  void _changeLanguage(String language) async {
    Locale _locale = await setLocale(language);
    MyApp.setLocale(context, _locale);
  }

  final List<Language> _grid = Language.languageList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xffee8361),
                  Color(0xffe3513f),
                ]),
          ),
          width: double.infinity,
          child: Stack(
            children: [
              const BackgroundImage(),
              Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        margin: const EdgeInsets.only(top: 30, bottom: 20),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40.0)),
                        child: const FlutterLogo(
                          size: 100,
                          style: FlutterLogoStyle.stacked,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          getTranslated(context, 'desc'),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          maxLines: 3,
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 15),
                    margin: const EdgeInsets.symmetric(horizontal: 10)
                        .copyWith(bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Text(
                          getTranslated(context, 'select_language'),
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 20),
                        ListView.builder(
                            itemCount: 3,
                            physics: const BouncingScrollPhysics(
                                parent: NeverScrollableScrollPhysics()),
                            shrinkWrap: true,
                            itemBuilder: (context, i) {
                              final e = _grid[i];
                              return LanguageItems(
                                title: e.name,
                                code: e.languageCode,
                                flag: e.flag,
                                onPressed: () {
                                  _changeLanguage(e.languageCode);
                                },
                              );
                            }),
                        const SizedBox(height: 10),
                        CupertinoButton(
                            color: primaryColor,
                            child: Text(getTranslated(context, 'ok_button')),
                            onPressed: () async {
                              SharedPreferences _prefs =
                                  await SharedPreferences.getInstance();
                              _prefs.setBool("landing", true);
                              Navigator.pushReplacementNamed(
                                  context, homeRoute);
                            })
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LanguageItems extends StatelessWidget {
  const LanguageItems(
      {Key? key, this.title, this.code, this.flag, this.onPressed})
      : super(key: key);
  final String? title;
  final String? code;
  final String? flag;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(50.0),
          splashColor: primaryColor.withOpacity(0.2),
          highlightColor: Colors.transparent,
          onTap: onPressed,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
            child: Row(
              children: [
                Text(title!),
                const Spacer(),
                SizedBox(
                  height: 40,
                  child: VerticalDivider(
                    color: Colors.grey[300],
                    thickness: 1,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/flags/$flag.png'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
