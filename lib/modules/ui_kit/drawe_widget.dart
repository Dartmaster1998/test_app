
import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/enums/enums.dart';
import 'package:flutter_application_2/modules/auth/auth_screen.dart';
import 'package:flutter_application_2/modules/contacts/cotacts_page.dart';
import 'package:flutter_application_2/modules/gids/gids_page.dart';
import 'package:flutter_application_2/modules/home_page/home_page.dart';
import 'package:flutter_application_2/modules/tours/tours_page.dart';

class DrawerPage extends StatefulWidget {
  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
   var currentPage = DrawerSections.aboutCompany;

   @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.aboutCompany) {
      container = HomePage();
    } else if (currentPage == DrawerSections.tours) {
      container =ToursPage ();
    } else if (currentPage == DrawerSections.contacts) {
      container = ContactsPage();
    } else if (currentPage == DrawerSections.gids) {
      container = GidsPage();
    }else if (currentPage == DrawerSections.enter) {
      container = LoginPage();
    }
    return Scaffold(
      appBar: AppBar(
      ),
      body: container,
      endDrawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [

                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      decoration: BoxDecoration(color: const Color.fromARGB(0, 228, 9, 9)),
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        children: [
          menuItem(1, "О компании", 
              currentPage == DrawerSections.aboutCompany ? true : false),
          menuItem(2, "Туры",
              currentPage == DrawerSections. tours? true : false),
          menuItem(3, "Контакты", 
              currentPage == DrawerSections.contacts ? true : false),
          menuItem(4, "Гиды", 
              currentPage == DrawerSections.gids ? true : false),
               menuItem(5, "Вход", 
              currentPage == DrawerSections.enter ? true : false),
      
        ],
      ),
    );
  }

  Widget menuItem(int id, String title,  bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.aboutCompany;
            } else if (id == 2) {
              currentPage = DrawerSections.tours;
            } else if (id == 3) {
              currentPage = DrawerSections.contacts;
            } else if (id == 4) {
              currentPage = DrawerSections.gids;
            } else if (id == 5) {
              currentPage = DrawerSections.enter;
            }
          });
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
  }
}
