import 'package:flutter/material.dart';
import 'package:counter_7/pages/formBudget.dart';
import 'package:counter_7/pages/dataBudget.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/pages/mywatchlist.dart';

class MyDrawer extends StatefulWidget {
  var theBudget;
  MyDrawer({super.key, this.theBudget});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          ListTile(
            title: const Text("counter_7"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyApp()));
            },
          ),
          ListTile(
            title: const Text("Tambah Budget"),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const FormBudget()),
              );
            },
          ),
          ListTile(
            title: const Text("Data Budget"),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DataBudget(
                            myBudget: widget.theBudget,
                          )));
            },
          ),
          ListTile(
            title: const Text("My Watch List"),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => MyWatchlist()));
            },
          )
        ],
      ),
    );
  }
}
