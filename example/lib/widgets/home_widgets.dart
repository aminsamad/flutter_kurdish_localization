import 'package:flutter/material.dart';
import 'package:flutter_kurdish_localization_example/localization/language_constants.dart';
import 'package:flutter_kurdish_localization_example/util/constants.dart';
import 'package:flutter_kurdish_localization_example/util/custom_container.dart';

class HomeWidgets extends StatefulWidget {
  const HomeWidgets({Key? key}) : super(key: key);

  @override
  _HomeWidgetsState createState() => _HomeWidgetsState();
}

class _HomeWidgetsState extends State<HomeWidgets> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  void _showSuccessDialog() {
    showTimePicker(context: context, initialTime: TimeOfDay.now());
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const Divider(height: 40),
          const FlutterLogo(
            size: 80,
            curve: Curves.easeInBack,
            style: FlutterLogoStyle.stacked,
          ),
          const Divider(
            height: 40,
          ),
          //! text form field
          Form(
            key: _key,
            child: Column(
              children: <Widget>[
                CustomContainer(
                  child: Column(
                    children: [
                      const Text(
                        "Text Form Field",
                        style: TextStyle(color: primaryColor),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return getTranslated(context, 'required_field');
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          labelText: getTranslated(context, 'name'),
                          hintText: getTranslated(context, 'name_hint'),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        validator: (val) {
                          if (val!.isEmpty) {
                            return getTranslated(context, 'required_field');
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          labelText: getTranslated(context, 'email'),
                          hintText: getTranslated(context, 'email_hint'),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),

                //!date
                CustomContainer(
                  child: Column(
                    children: [
                      Text(
                        getTranslated(context, 'date_of_birth'),
                        style: const TextStyle(color: primaryColor),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: OutlinedButton(
                          child: Text(
                            getTranslated(context, 'pick_date'),
                            style: const TextStyle(color: Colors.black),
                          ),
                          onPressed: () async {
                            await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(DateTime.now().year),
                              lastDate: DateTime(DateTime.now().year + 20),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),

                //!time
                CustomContainer(
                  child: Column(
                    children: [
                      Text(
                        getTranslated(context, 'time'),
                        style: const TextStyle(color: primaryColor),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: OutlinedButton(
                          child: Text(
                            getTranslated(context, 'select_time'),
                            style: const TextStyle(color: Colors.black),
                          ),
                          onPressed: () async {
                            _showSuccessDialog();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
