import 'package:flutter/material.dart';
import 'package:myapp/data/categories_data.dart';
import 'package:myapp/ui/home/widgets/category_widget.dart';

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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 8.0,
                children: List.generate(CategoriesData.listCategories.length, (
                  index,
                ) {
                  return CategoryWidget(
                    category: CategoriesData.listCategories[index],
                  );
                }),
              ),
            ),
            Image.asset('assets/banners/banner_promo.png'),
            Text("Bem avaliados"),
          ],
        ),
      ),
    );
  }
}
