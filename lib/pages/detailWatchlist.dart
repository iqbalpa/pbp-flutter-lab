import 'package:flutter/material.dart';
import 'package:counter_7/pages/formBudget.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/model/budget.dart';
import 'package:counter_7/drawer.dart';
import 'package:counter_7/pages/mywatchlist.dart';
import 'package:counter_7/model/watchlist.dart';

class DetailWatchlist extends StatefulWidget {
  var title;
  var release_date;
  var rating;
  var watched;
  var review;
  DetailWatchlist(
      {super.key,
      this.title,
      this.release_date,
      this.rating,
      this.watched,
      this.review});

  @override
  State<DetailWatchlist> createState() => _DetailWatchlistState();
}

class _DetailWatchlistState extends State<DetailWatchlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail")),
      drawer: MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          Center(
            child: Text(
              widget.title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Row(children: [
            const Text(
              "Release Date: ",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            Text(widget.release_date),
          ]),
          Row(children: [
            const Text("Rating: ",
                style: TextStyle(fontWeight: FontWeight.w700)),
            Text(widget.rating),
          ]),
          Row(children: [
            const Text("Status: ",
                style: TextStyle(fontWeight: FontWeight.w700)),
            if (widget.watched == true)
              const Text("Watched")
            else
              const Text("Not Watched"),
          ]),
          Align(
            alignment: Alignment.topLeft,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Review: ",
                      style: TextStyle(fontWeight: FontWeight.w700)),
                  Text(widget.review),
                ]),
          )
        ]),
      ),

      // create full button to back to mywatchlist.dart
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text("Back"),
      ),
    );
  }
}
