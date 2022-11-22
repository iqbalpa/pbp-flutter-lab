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
      body: Column(
          children: [
            Text(widget.title),
            Text("Release data: ${widget.release_date}"),
            Text("Rating: ${widget.rating}"),
            if (widget.watched)
              Text("Status: Watched")
            else
              Text("Status: Not Yet Watched"),
            Text("Review: ${widget.review}"),
          ]),
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
