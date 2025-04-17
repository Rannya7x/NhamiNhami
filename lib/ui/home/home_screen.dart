import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          spacing: 32.0,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset('assets/NhamiNhami.png', width: 200)),
            Text("Boas Vindas!"),
            TextFormField(),
            Text("Escolha por categoria"),
            Image.asset('assets/banners/banner_promo.png'),
            Text("Bem avaliados"),
          ],
        ),
      ),
    );
  }
}
