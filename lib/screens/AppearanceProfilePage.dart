import 'package:flutter/material.dart';

class AppearanceProfilePage extends StatefulWidget {
  const AppearanceProfilePage({super.key});

  @override
  State<AppearanceProfilePage> createState() => _AppearanceProfilePageState();
}

class _AppearanceProfilePageState extends State<AppearanceProfilePage> {
  String selectedTheme = "light";

  final Map<String, String> themeOptions = {
    'light': 'Light',
    'dark': 'Dark',
    'system': 'Automatic',
  };

  Icon _getThemeIcon(String themeKey) {
    switch (themeKey) {
      case 'light':
        return Icon(Icons.sunny, size: 20);
      case 'dark':
        return Icon(Icons.dark_mode, size: 20);
      case 'system':
        return Icon(Icons.auto_fix_high, size: 20);
      default:
        return Icon(Icons.sunny, size: 20);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 10),
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: const Color.fromARGB(255, 233, 223, 223)),
          ),
          height: 70,
          width: 325,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  _getThemeIcon(selectedTheme),
                  SizedBox(width: 10),
                  Text(
                    "Appearance",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              DropdownButton<String>(
                value: selectedTheme,
                underline: SizedBox(),
                items:
                    themeOptions.entries.map((entry) {
                      return DropdownMenuItem<String>(
                        value: entry.key,
                        child: Text(entry.value),
                      );
                    }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedTheme = value!;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
