import 'package:flutter/material.dart';
import 'package:flutter_listview_search/model/stock.dart';
import 'package:flutter_listview_search/model/company_model.dart';
import 'package:flutter_listview_search/screens/stock_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SearchPage(),
    );
  }
}

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  static List<CompanyModel> main_company_list = [
    CompanyModel("Bursa Malaysia"),
    CompanyModel("HDFC Bank"),
    CompanyModel("ITC Limited"),
    CompanyModel("Titan Company"),
    CompanyModel("Cipla"),
    CompanyModel("Cnergenz"),
    CompanyModel("Yew Lee Pacific Group"),
    CompanyModel("Maybank"),
    CompanyModel("Aeon Co (m)"),
    CompanyModel("Top Glove"),
    CompanyModel("Ajinomoto Malaysia Bhd"),
    CompanyModel("Petronas Gas Berhad"),
  ];

  List<CompanyModel> display_list = List.from(main_company_list);

  void updateList(String value) {
    setState(() {
      display_list = main_company_list
          .where((element) => element.company_title!
              .toLowerCase()
              .contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 254, 246, 246),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My Portfolio",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              onChanged: (value) => updateList(value),
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 205, 201, 201),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                hintText: "Search a company",
                prefixIcon: Icon(Icons.search),
                prefixIconColor: Colors.black,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: display_list.length == 0
                  ? Center(
                      child: Text(
                        "No result found!",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  : ListView.builder(
                      itemCount: display_list.length,
                      itemBuilder: (context, index) {
                        Stock stock = stockList[index];
                        return Card(
                          child: ListTile(
                            contentPadding: EdgeInsets.all(8.0),
                            title: Text(
                              display_list[index].company_title!,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            trailing: Icon(Icons.arrow_forward_ios),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          StockDetailsScreen(stock)));
                            },
                          ),
                        );
                      }),
            ),
          ],
        ),
      ),
    );
  }
}
