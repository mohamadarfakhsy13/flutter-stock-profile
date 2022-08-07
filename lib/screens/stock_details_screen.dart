import 'package:flutter/material.dart';
import 'package:flutter_listview_search/model/stock.dart';

class StockDetailsScreen extends StatelessWidget {
  final Stock stock;

  StockDetailsScreen(this.stock);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(stock.title),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Table(
          defaultVerticalAlignment:
              TableCellVerticalAlignment.middle, // this is new
          children: [
            TableRow(children: [
              Text(
                'Last Trade',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text("\$${stock.trade}",
                  style: TextStyle(color: Colors.black, fontSize: 20))
            ]),
            TableRow(children: [
              Text('Change', 
              style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
              Text("\$${stock.change}",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20))
            ]),
            TableRow(children: [
              Text('Open',
              style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
              Text("\$${stock.open}",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20))
            ]),
            TableRow(children: [
              Text('Bid',
              style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
              Text("\$${stock.bid}",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20))
            ]),
            TableRow(children: [
              Text('Ask',
              style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
              Text("\$${stock.ask}",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20))
            ])
          ],
        ),
      ),
    );
  }
}
