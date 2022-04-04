import 'package:demo/ui/routing/route.dart';
import 'package:demo/ui/views/single_card_view.dart';
import 'package:flutter/material.dart';

class CardListView extends StatelessWidget {
  const CardListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: ListView.builder(
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                Routes.singleCardViewRoute,
                arguments: "Card$index",
              );
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (_) => SingleCardView(text: "Card$index"),
              //   ),
              // );
            },
            child: Card(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Text("Card$index"),
              ),
            ),
          );
        },
      ),
    );
  }
}
