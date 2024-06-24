import 'package:flutter/material.dart';
import 'package:tailortape/ui/widgets/custom_elevated_button.dart';
import 'package:tailortape/utils/constants/test_styles.dart';
import 'package:tailortape/utils/helper_functions.dart';
import 'package:tailortape/utils/thememode_identifier.dart';

class AcountTypeView extends StatelessWidget {
  const AcountTypeView({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = ThememodeIdentifier().tell(context);

    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Choose Your Role in This App",
                style: TextStyles().style(900, 20)),
            HelperFunctions().vSpace(20),
            MyElevatedButton(
              height: 50,
              width: 300,
              borderRadius: BorderRadius.circular(10),
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, "signup_customer",
                    (Route<dynamic> route) => false);
              },
              child: Text(
                'Create Customer Account',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: isDarkMode ? Colors.black : Colors.white),
              ),
            ),
            HelperFunctions().vSpace(10),
            const Text("Or"),
            HelperFunctions().vSpace(10),
            MyElevatedButton(
              height: 50,
              width: 300,
              borderRadius: BorderRadius.circular(10),
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "signup", (Route<dynamic> route) => false);
              },
              child: Text(
                'Create Tailor Account',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: isDarkMode ? Colors.black : Colors.white),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
