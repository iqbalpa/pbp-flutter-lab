import 'package:flutter/material.dart';
import 'package:counter_7/formBudget.dart';
import 'package:counter_7/main.dart';

class DataBudget extends StatefulWidget {
  var myBudget;
  DataBudget({super.key, this.myBudget});

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
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => DataBudget()));
              },
            )
          ],
        ),
      ),
      body: Column(
        children: [
          if (widget.myBudget == null)
            const Center(
              child: Text("Data Kosong"),
            )
          else if (widget.myBudget.length == 0)
            const Center(
              child: Text("Data Kosong"),
            )
          else
            Expanded(
              child: ListView.builder(
                itemCount: widget.myBudget.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(widget.myBudget[index].judul),
                      subtitle: Text(widget.myBudget[index].nominal),
                      trailing: Text(widget.myBudget[index].jenis),
                    ),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
