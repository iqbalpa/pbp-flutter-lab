import 'package:flutter/material.dart';
import 'package:counter_7/formBudget.dart';
import 'package:counter_7/main.dart';

class DataBudget extends StatefulWidget {
  const DataBudget({super.key});

  @override
  State<DataBudget> createState() => _DataBudgetState();
}

class _DataBudgetState extends State<DataBudget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Budget"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
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
                        builder: (context) => const DataBudget()));
              },
            )
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Container(
              width: 500,
              height: 110,
              padding: const EdgeInsets.all(10),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.grey,
                elevation: 10,
                child: Column(
                  children: <Widget>[
                    ListTile(title: Text("Beli Sate Pacil")),
                    Container(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("15000"),
                          Text("Pengeluaran"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              width: 500,
              height: 110,
              padding: const EdgeInsets.all(10),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.grey,
                elevation: 10,
                child: Column(
                  children: <Widget>[
                    ListTile(title: Text("Jual Aghanim's Septer")),
                    Container(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("2100"),
                          Text("Pemasukan"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
