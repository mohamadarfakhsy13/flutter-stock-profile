import 'package:flutter/material.dart';
import 'package:flutter_listview_search/model/stock.dart';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class StockDetailsScreen extends StatelessWidget {
  final Stock stock;

  StockDetailsScreen(this.stock);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(stock.title),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        stock.title,
                        style: Theme.of(context).textTheme.headline4,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                child: Column(
                  children: [
                    DefaultTextStyle.merge(
                      style: Theme.of(context).textTheme.headline4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Trade"),
                          Text(
                            "\$${stock.trade}",
                          ),
                        ],
                      ),
                    ),
                    DefaultTextStyle.merge(
                      style: Theme.of(context).textTheme.headline4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Change"),
                          Text(
                            "\$${stock.change}",
                          ),
                        ],
                      ),
                    ),
                    DefaultTextStyle.merge(
                      style: Theme.of(context).textTheme.headline4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Open"),
                          Text(
                            "\$${stock.open}",
                          ),
                        ],
                      ),
                    ),
                    DefaultTextStyle.merge(
                      style: Theme.of(context).textTheme.headline4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Bid"),
                          Text(
                            "\$${stock.bid}",
                          ),
                        ],
                      ),
                    ),
                    DefaultTextStyle.merge(
                      style: Theme.of(context).textTheme.headline4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Ask"),
                          Text(
                            "\$${stock.ask}",
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(12.0,),
              child: ElevatedButton(
                  onPressed: _createPdf,
                  child: Text("Print Report"),
                ),
            ),
              SizedBox(
                height: 50,
              ),
          ],
        ));
  }

  void _createPdf() async {
    final doc = pw.Document();

    doc.addPage(
      pw.Page(
          pageFormat: PdfPageFormat.a4,
          build: (pw.Context context) {
            return pw.Center(
              child: pw.Text('Hello Flutter'),
            );
          }),
    );

    await Printing.layoutPdf(
        onLayout: (PdfPageFormat format) async => doc.save());
  }
}
