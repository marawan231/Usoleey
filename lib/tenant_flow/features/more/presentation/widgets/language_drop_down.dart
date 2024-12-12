import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/tenant_flow/features/choose_language/logic/cubit/choose_language_cubit.dart';


class DropdownExample extends StatefulWidget {
  @override
  _DropdownExampleState createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {
  bool isDropdownOpen = false;
  late GlobalKey actionKey;
  late double buttonHeight;

  @override
  void initState() {
    super.initState();
    actionKey = GlobalKey();
  }

  void openDropdown() {
    setState(() {
      isDropdownOpen = true;
    });
  }

  void closeDropdown() {
    setState(() {
      isDropdownOpen = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final language = getIt<ChooseLanguageCubit>().state.language;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // RaisedButton(
        //   onPressed: openDropdown,
        //   child: Text('Open Dropdown'),
        // ),
        if (isDropdownOpen)
          Positioned(
            width: actionKey.currentContext!.size!.width,
            child: DropdownButtonHideUnderline(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: DropdownButton<String>(
                  value: language?.languageCode,
                  onChanged: (newValue) {
                    // Handle dropdown item selection
                  },
                  items: [
                    DropdownMenuItem<String>(
                        value: 'ar', child: Text('عربي')),
                    DropdownMenuItem<String>(
                        value: 'option2', child: Text('English')),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}
