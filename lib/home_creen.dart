import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/about_screen.dart';
import 'package:task/screen1.dart';

class HomeCreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 68, 102, 162),
        actions: [
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 25),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutScreen()),
                );
              },
              icon: Icon(
                Icons.add_box_outlined,
                color: Colors.white,
              ),
            ),
          ),
        ],
        centerTitle: true,
        title: Text(
          'Provider',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Consumer<ProductProvider>(
        builder: (context, provider, child) {
          return ListView.builder(
            itemCount: provider.availableProducts.length,
            itemBuilder: (context, index) {
              final product = provider.availableProducts[index];
              return ListTile(
                title: Text(product),
                trailing: IconButton(
                  icon: Icon(
                    Icons.add,
                    color: Colors.green,
                  ),
                  onPressed: () => provider.moveProduct(product),
                ),
              );
            },
          );
        },
        child: GestureDetector(
          child: Container(
            height: 20,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.all(Radius.circular(10)),
                color: Colors.blueAccent,
                border: Border.all(color: Colors.black)),
          ),
        ),
      ),
    );
  }
}
