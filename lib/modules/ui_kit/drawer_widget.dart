import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/enums/enums.dart';
import 'package:flutter_application_2/modules/auth/auth_screen.dart';
import 'package:flutter_application_2/modules/contacts/cotacts_page.dart';
import 'package:flutter_application_2/modules/gids/gids_page.dart';
import 'package:flutter_application_2/modules/home_page/home_page.dart';
import 'package:flutter_application_2/modules/tours/tours_page.dart';


class DrawerWidget extends StatefulWidget {
  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  ValueNotifier<DrawerSections> currentPage = ValueNotifier(DrawerSections.aboutCompany);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ValueListenableBuilder<DrawerSections>(
        valueListenable: currentPage,
        builder: (context, value, child) {
          Widget container;
          switch (value) {
            case DrawerSections.aboutCompany:
              container = HomePage();
              break;
            case DrawerSections.tours:
              container = ToursPage();
              break;
            case DrawerSections.contacts:
              container = ContactsPage();
              break;
            case DrawerSections.gids:
              container = GidsPage();
              break;
            case DrawerSections.enter:
              container = LoginPage();
              break;
          }
          return container;
        },
      ),
      endDrawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              MyDrawerList(currentPage),
            ],
          ),
        ),
      ),
    );
  }
}

class MyDrawerList extends StatelessWidget {
  final ValueNotifier<DrawerSections> currentPage;

  MyDrawerList(this.currentPage);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: const Color.fromARGB(0, 228, 9, 9)),
      padding: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          menuItem(context, 1, "О компании", DrawerSections.aboutCompany),
          menuItem(context, 2, "Туры", DrawerSections.tours),
          menuItem(context, 3, "Контакты", DrawerSections.contacts),
          menuItem(context, 4, "Гиды", DrawerSections.gids),
          menuItem(context, 5, "Вход", DrawerSections.enter),
        ],
      ),
    );
  }

  Widget menuItem(BuildContext context, int id, String title, DrawerSections section) {
    return ValueListenableBuilder<DrawerSections>(
      valueListenable: currentPage,
      builder: (context, value, child) {
        return Material(
          color: value == section ? Colors.grey[300] : Colors.transparent,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
              currentPage.value = section;
            },
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      title,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
