import 'package:flutter/material.dart';
import 'package:khorda_click/presentation/screens/home/dummy_data.dart';

class ProductSearchDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<Map<String, String>> results = DummyData.products
        .where((product) =>
            product["name"]!.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return Container(
      color: Color(0xffF5F5F5), // ✅ تغيير لون الخلفية
      child: ListView.builder(
        itemCount: results.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading:
                Image.asset(results[index]["image"]!, width: 50, height: 50),
            title: Text(
              results[index]["name"]!,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
              results[index]["price"]!,
              style: TextStyle(color: Colors.grey[700]),
            ),
            onTap: () {
              close(context, results[index]["name"]);
            },
          );
        },
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<Map<String, String>> suggestions = DummyData.products
        .where((product) =>
            product["name"]!.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return Container(
      color: Color(0xffF5F5F5), // ✅ تغيير لون الخلفية
      child: ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              suggestions[index]["name"]!,
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              query = suggestions[index]["name"]!;
              showResults(context);
            },
          );
        },
      ),
    );
  }
}
