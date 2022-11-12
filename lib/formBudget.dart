import 'package:flutter/material.dart';
import 'package:counter_7/dataBudget.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/budget.dart';

class FormBudget extends StatefulWidget {
  const FormBudget({super.key});

  @override
  State<FormBudget> createState() => _FormBudgetState();
}

class _FormBudgetState extends State<FormBudget> {
  List<Budget> _budget = [];
  final _formKey = GlobalKey<FormState>();
  String _judul = "";
  String _nominal = "";
  String _jenis = "Pemasukan";
  List<String> listJenis = ["Pemasukan", "Pengeluaran"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Form Budget"),
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
                          builder: (context) => DataBudget(
                                myBudget: _budget,
                              )));
                },
              ),
            ],
          ),
        ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "Judul",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          )),
                      onChanged: (String? value) {
                        setState(() {
                          _judul = value!;
                        });
                      },
                      onSaved: (String? value) {
                        setState(() {
                          _judul = value!;
                        });
                      },
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return "Judul tidak boleh kosong!";
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelText: "Nominal",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          )),
                      onChanged: (String? value) {
                        setState(() {
                          _judul = value!;
                        });
                      },
                      onSaved: (String? value) {
                        setState(() {
                          _judul = value!;
                        });
                      },
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return "Nominal tidak boleh kosong!";
                        }
                        return null;
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text("Pilih Jenis"),
                    trailing: DropdownButton(
                      value: _jenis,
                      items: listJenis.map((String iniJenis) {
                        return DropdownMenuItem(
                          value: iniJenis,
                          child: Text(iniJenis),
                        );
                      }).toList(),
                      onChanged: (String? newJenis) {
                        setState(() {
                          _jenis = newJenis!;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: Container(
          alignment: Alignment.bottomCenter,
          margin: const EdgeInsets.only(left: 30.0),
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
              padding: MaterialStateProperty.all(
                const EdgeInsets.all(20.0),
              ),
            ),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                setState(() {
                  Budget newBudget = Budget(_judul, _nominal, _jenis);
                  _budget.add(newBudget);
                  print(_budget.length);
                });
                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 15,
                      child: Container(
                        child: ListView(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          shrinkWrap: true,
                          children: <Widget>[
                            Center(
                                child: Column(
                              children: [
                                const Text(
                                  "Data berhasil disimpan!",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Judul: $_judul"),
                                Text("Nominal: $_nominal"),
                                Text("Jenis: $_jenis"),
                              ],
                            )),
                            SizedBox(height: 20),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                                setState(() {
                                  _judul = "";
                                  _nominal = "";
                                  _jenis = "Pemasukan";
                                });
                              },
                              child: Text('Kembali'),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }
            },
            child: const Text(
              "Simpan",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ));
  }
}
