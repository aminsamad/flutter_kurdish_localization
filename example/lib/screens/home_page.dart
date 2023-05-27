import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_kurdish_localization_example/localization/language_constants.dart';
import 'package:flutter_kurdish_localization_example/widgets/home_widgets.dart';
import 'package:flutter_kurdish_localization_example/widgets/settings.dart';
import 'package:flutter_kurdish_localization_example/util/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedItemPosition = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> _pages = [
      const HomeWidgets(),
      const SettingsWidget(),
    ];
    return Scaffold(
      backgroundColor: const Color(0xfffdf3f0),
      body: SafeArea(child: _pages[_selectedItemPosition]),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey[400],
        showUnselectedLabels: true,
        showSelectedLabels: true,
        currentIndex: _selectedItemPosition,
        onTap: (index) => setState(() => _selectedItemPosition = index),
        items: [
          BottomNavigationBarItem(
              icon: const Icon(FeatherIcons.home),
              label: getTranslated(context, 'home_page')),
          BottomNavigationBarItem(
              icon: const Icon(FeatherIcons.settings),
              label: getTranslated(context, 'settings')),
        ],
        selectedLabelStyle: const TextStyle(fontSize: 14),
        unselectedLabelStyle: const TextStyle(fontSize: 10),
      ),
    );
  }
}
