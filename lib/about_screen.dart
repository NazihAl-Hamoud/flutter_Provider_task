import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/home_creen.dart';
import 'package:task/screen1.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 68, 102, 162),
        leading: Padding(
          padding: const EdgeInsetsDirectional.only(start: 25),
          child: IconButton(
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(builder: (context) => HomeCreen()),
              );
            },
            icon: Icon(Icons.arrow_circle_left_outlined, color: Colors.white),
          ),
        ),
        centerTitle: true,
        title: Text(
          'Provider',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Consumer<ProductProvider>(
        builder: (context, provider, child) {
          return ListView.builder(
            itemCount: provider.movedProducts.length,
            itemBuilder: (context, index) {
              final product = provider.movedProducts[index];
              return ListTile(
                title: Text(product),
              );
            },
          );
        },
      ),
    );
  }
}
