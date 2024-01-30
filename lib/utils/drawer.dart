import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interneepk/utils/helpers/helper_functions.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../common/routes/routes_names.dart';
import '../data/api/firebase/firebase_auth_handler.dart';
import 'constants/colors.dart';

class AppDrawer{
  static Drawer getDrawer(BuildContext context){
    Drawer myDrawer = Drawer(
      backgroundColor: Colors.green.shade50,
      child: ListView(
        children: [
          SizedBox(
            height: NHelpers.getScreenHeight() * 0.3,
            child: DrawerHeader(
              decoration: BoxDecoration(color: Colors.green.shade300),
              child: Column(
                children: [
                  const Image(
                    image: AssetImage("assets/images/logo.png"),
                    height: 80,
                    width: 80,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Internee.pk",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Virtual Internship Platform",
                    style: Theme.of(context).textTheme.titleSmall, textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          ListTile(
            title: const Text("Internship Listings"),
            leading: const Icon(LineAwesomeIcons.briefcase),
            onTap: () {
              Get.offAndToNamed(RoutesNames.homeView);
            },
          ),
          const Divider(
            thickness: 1.5,
            height: 8,
            color: NColors.primary,
            indent: 16,
            endIndent: 16,
          ),
          ListTile(
            title: const Text("Logout", style: TextStyle(color: Colors.red),),
            leading: const Icon(Icons.logout),
            onTap: () {
              FirebaseAuthHandler().logout();
              Get.toNamed(RoutesNames.welcomeView);
            },
          ),
          ListTile(
            title: const Text("Exit"),
            leading: const Icon(Icons.close),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
    return myDrawer;
  }
}