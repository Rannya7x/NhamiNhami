import 'package:flutter/material.dart';
import 'package:myapp/data/categories_data.dart';
import 'package:myapp/data/restaurants_data.dart';
import 'package:myapp/model/restaurant.dart';
import 'package:myapp/ui/_core/widgets/app_bar.dart';
import 'package:myapp/ui/home/widgets/category_widget.dart';
import 'package:myapp/ui/home/widgets/restaurant_widget.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    RestaurantsData restaurantsData = Provider.of<RestaurantsData>(context);
    return Scaffold(
      drawer: Drawer(),
      appBar: getAppBar(context: context),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: SingleChildScrollView(
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
                  children: List.generate(
                    CategoriesData.listCategories.length,
                    (index) {
                      return CategoryWidget(
                        category: CategoriesData.listCategories[index],
                      );
                    },
                  ),
                ),
              ),
              Image.asset('assets/banners/banner_promo.png'),
              Text("Bem avaliados"),
              Column(
                spacing: 12,
                children: List.generate(restaurantsData.listRestaurant.length, (
                  index,
                ) {
                  Restaurant restaurant = restaurantsData.listRestaurant[index];
                  return RestaurantWidget(restaurant: restaurant);
                }),
              ),
              SizedBox(height: 64.0),
            ],
          ),
        ),
      ),
    );
  }
}
