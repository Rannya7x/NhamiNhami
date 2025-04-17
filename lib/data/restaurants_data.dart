import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:myapp/model/restaurant.dart';

class RestaurantsData {
  Future<List<Restaurant>> getRestaurants() async {
    List<Restaurant> listRestaurant = [];

    String jsonString = await rootBundle.loadString('assets/data.json');
    Map<String, dynamic> data = json.decode(jsonString);
    List<dynamic> restaurantsData = data["restaurants"];

    for (var restaurantData in restaurantsData) {
      Restaurant restaurant = Restaurant.fromMap(restaurantData);
      listRestaurant.add(restaurant);
    }

    return listRestaurant;
  }
}
