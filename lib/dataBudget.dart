import 'package:flutter/material.dart';
import 'package:counter_7/formBudget.dart';
import 'package:counter_7/main.dart';

class DataBudget extends StatefulWidget {
  const DataBudget({super.key});

  @override
  State<DataBudget> createState() => _DataBudgetState();
}

class _DataBudgetState extends State<DataBudget> {
  List<Budget> listBudget = const FormBudget().getBudget();

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
        children: [
          listBudget.isEmpty
              ? const Text("Data Kosong")
              : ListView.builder(
                  shrinkWrap: true,
                  itemCount: listBudget.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(listBudget[index].judul),
                      subtitle: Text(listBudget[index].nominal),
                      trailing: Text(listBudget[index].jenis),
                    );
                  },
                ),
        ],
      ),
    );
  }
}
