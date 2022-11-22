import 'package:flutter/material.dart';
import 'package:counter_7/drawer.dart';
import 'package:counter_7/model/watchlist.dart';
import 'package:counter_7/function/fetchWatchlist.dart';

class MyWatchlist extends StatefulWidget {
  const MyWatchlist({super.key});

  @override
  State<MyWatchlist> createState() => _MyWatchlistState();
}

class _MyWatchlistState extends State<MyWatchlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Watch List"),
      ),
      drawer: MyDrawer(),
      body: FutureBuilder(
          future: fetchWatchlist(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(snapshot.data[index].title),
                      subtitle: Text(snapshot.data[index].release_date),
                    );
                  });
            }
          }),
    );
  }
}
