import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tailortape/utils/constants/test_styles.dart';
import 'package:tailortape/utils/helper_functions.dart';
import 'package:tailortape/utils/thememode_identifier.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    _checkAccountAndThenRoute();
  }

  Future<void> _checkAccountAndThenRoute() async {
    User? user = FirebaseAuth.instance.currentUser;
    SharedPreferences pref = await SharedPreferences.getInstance();
    if (user == null) {
      Timer(const Duration(seconds: 2), () {
        Navigator.pushNamedAndRemoveUntil(
            context, "account_type", (Route<dynamic> route) => false);
      });
    } else {
      if (pref.getString("accountType") == "Tailor") {
        Timer(const Duration(seconds: 2), () {
          Navigator.pushNamedAndRemoveUntil(
              context, "tailor", (Route<dynamic> route) => false);
        });
      } else if (pref.getString("accountType") == "Customer") {
        Timer(const Duration(seconds: 2), () {
          Navigator.pushNamedAndRemoveUntil(
              context, "customer", (Route<dynamic> route) => false);
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = ThememodeIdentifier().tell(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "icons/app_logo.svg",
              width: 200,
              height: 200,
              colorFilter: ColorFilter.mode(
                  !isDarkMode
                      ? const Color(0xff000000)
                      : const Color(0xffffffff),
                  BlendMode.srcIn),
            ),
            HelperFunctions().vSpace(15),
            Text("Tailor Tap", style: TextStyles().style(900, 40))
          ],
        ),
      ),
    );
  }
}
