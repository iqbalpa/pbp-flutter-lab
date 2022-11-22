import 'package:flutter/material.dart';
import 'package:counter_7/pages/formBudget.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/model/budget.dart';
import 'package:counter_7/drawer.dart';

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
      drawer: MyDrawer(
        theBudget: widget.myBudget,
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
                        title: Text(widget.myBudget[index]
                            .judul), // ini judul isinya malah nominal
                        subtitle: Text(widget.myBudget[index]
                            .nominal), // ini nominal isinya gaada
                        trailing: Column(
                          children: [
                            Text(widget.myBudget[index].jenis),
                            Text(widget.myBudget[index].date.toString()),
                          ],
                        )),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
