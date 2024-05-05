import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app_with_backend/models/food.dart';

import 'cart_item.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu
  final List<Food> _menu = [
    //burgers

    Food(
      name: 'Classic Cheeseburger',
      description:
          'A juicy beef patty with melted cheddar, tomato and hint of whine sauage split into it ',
      imagePath: 'images/burgers/burger_1.png',
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddones: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'bacon', price: 1.99),
        Addon(name: 'Avocado', price: 1.99),
      ],
    ),
    Food(
      name: 'extra Bacon Burger',
      description:
          'A juicy beef patty with melted cheddar, tomato and hint of whine sauage split into it ',
      imagePath: 'images/burgers/burger_2.png',
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddones: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'bacon', price: 1.99),
        Addon(name: 'Avocado', price: 1.99),
      ],
    ),
    Food(
      name: 'Veggie Burger',
      description:
          'A juicy beef patty with melted cheddar, tomato and hint of whine sauage split into it ',
      imagePath: 'images/burgers/burger_3.png',
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddones: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'bacon', price: 1.99),
        Addon(name: 'Avocado', price: 1.99),
      ],
    ),
    Food(
      name: 'BBQ batch Burger',
      description:
          'A juicy beef patty with melted cheddar, tomato and hint of whine sauage split into it ',
      imagePath: 'images/burgers/burger_4.png',
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddones: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'bacon', price: 1.99),
        Addon(name: 'Avocado', price: 1.99),
      ],
    ),
    Food(
      name: 'hamilton burger',
      description:
          'A juicy beef patty with melted cheddar, tomato and hint of whine sauage split into it ',
      imagePath: 'images/burgers/burger_4.png',
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddones: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'bacon', price: 1.99),
        Addon(name: 'Avocado', price: 1.99),
      ],
    ),

    // salads

    Food(
      name: 'frut salad',
      description:
          'A juicy beef patty with melted cheddar, tomato and hint of whine sauage split into it ',
      imagePath: 'images/desserts/dessert_1.png',
      price: 0.99,
      category: FoodCategory.salads,
      availableAddones: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'bacon', price: 1.99),
        Addon(name: 'Avocado', price: 1.99),
      ],
    ),
    Food(
      name: 'oil salad',
      description:
          'A juicy beef patty with melted cheddar, tomato and hint of whine sauage split into it ',
      imagePath: 'images/desserts/dessert_1.png',
      price: 0.99,
      category: FoodCategory.salads,
      availableAddones: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'bacon', price: 1.99),
        Addon(name: 'Avocado', price: 1.99),
      ],
    ),
    Food(
      name: 'gollani salad',
      description:
          'A juicy beef patty with melted cheddar, tomato and hint of whine sauage split into it ',
      imagePath: 'images/desserts/dessert_1.png',
      price: 0.99,
      category: FoodCategory.salads,
      availableAddones: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'bacon', price: 1.99),
        Addon(name: 'Avocado', price: 1.99),
      ],
    ),
    Food(
      name: 'olive salad',
      description:
          'A juicy beef patty with melted cheddar, tomato and hint of whine sauage split into it ',
      imagePath: 'images/desserts/dessert_1.png',
      price: 0.99,
      category: FoodCategory.salads,
      availableAddones: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'bacon', price: 1.99),
        Addon(name: 'Avocado', price: 1.99),
      ],
    ),
    Food(
      name: 'mejor salad',
      description:
          'A juicy beef patty with melted cheddar, tomato and hint of whine sauage split into it ',
      imagePath: 'images/desserts/dessert_1.png',
      price: 0.99,
      category: FoodCategory.salads,
      availableAddones: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'bacon', price: 1.99),
        Addon(name: 'Avocado', price: 1.99),
      ],
    ),

    // sides

    Food(
      name: 'Classic Cheeseburger',
      description:
          'A juicy beef patty with melted cheddar, tomato and hint of whine sauage split into it ',
      imagePath: 'images/desserts/dessert_1.png',
      price: 0.99,
      category: FoodCategory.sides,
      availableAddones: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'bacon', price: 1.99),
        Addon(name: 'Avocado', price: 1.99),
      ],
    ),
    Food(
      name: 'Classic emfje jg',
      description:
          'A juicy beef patty with melted cheddar, tomato and hint of whine sauage split into it ',
      imagePath: 'images/desserts/dessert_1.png',
      price: 0.99,
      category: FoodCategory.sides,
      availableAddones: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'bacon', price: 1.99),
        Addon(name: 'Avocado', price: 1.99),
      ],
    ),
    Food(
      name: 'Classic Cheeseburger',
      description:
          'A juicy beef patty with melted cheddar, tomato and hint of whine sauage split into it ',
      imagePath: 'images/desserts/dessert_1.png',
      price: 0.99,
      category: FoodCategory.sides,
      availableAddones: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'bacon', price: 1.99),
        Addon(name: 'Avocado', price: 1.99),
      ],
    ),
    Food(
      name: 'Classic Cheeseburger',
      description:
          'A juicy beef patty with melted cheddar, tomato and hint of whine sauage split into it ',
      imagePath: 'images/desserts/dessert_1.png',
      price: 0.99,
      category: FoodCategory.sides,
      availableAddones: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'bacon', price: 1.99),
        Addon(name: 'Avocado', price: 1.99),
      ],
    ),
    Food(
      name: 'Classic Cheeseburger',
      description:
          'A juicy beef patty with melted cheddar, tomato and hint of whine sauage split into it ',
      imagePath: 'images/desserts/dessert_1.png',
      price: 0.99,
      category: FoodCategory.sides,
      availableAddones: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'bacon', price: 1.99),
        Addon(name: 'Avocado', price: 1.99),
      ],
    ),

    //desserts

    Food(
      name: 'Classic Cheeseburger',
      description:
          'A juicy beef patty with melted cheddar, tomato and hint of whine sauage split into it ',
      imagePath: 'images/desserts/dessert_1.png',
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddones: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'bacon', price: 1.99),
        Addon(name: 'Avocado', price: 1.99),
      ],
    ),
    Food(
      name: 'Classic emfje jg',
      description:
          'A juicy beef patty with melted cheddar, tomato and hint of whine sauage split into it ',
      imagePath: 'images/desserts/dessert_1.png',
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddones: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'bacon', price: 1.99),
        Addon(name: 'Avocado', price: 1.99),
      ],
    ),
    Food(
      name: 'Classic Cheeseburger',
      description:
          'A juicy beef patty with melted cheddar, tomato and hint of whine sauage split into it ',
      imagePath: 'images/desserts/dessert_1.png',
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddones: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'bacon', price: 1.99),
        Addon(name: 'Avocado', price: 1.99),
      ],
    ),
    Food(
      name: 'Classic Cheeseburger',
      description:
          'A juicy beef patty with melted cheddar, tomato and hint of whine sauage split into it ',
      imagePath: 'images/desserts/dessert_1.png',
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddones: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'bacon', price: 1.99),
        Addon(name: 'Avocado', price: 1.99),
      ],
    ),
    Food(
      name: 'Classic Cheeseburger',
      description:
          'A juicy beef patty with melted cheddar, tomato and hint of whine sauage split into it ',
      imagePath: 'images/desserts/dessert_1.png',
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddones: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'bacon', price: 1.99),
        Addon(name: 'Avocado', price: 1.99),
      ],
    ),

    // drinks

    Food(
      name: 'Classic Cheeseburger',
      description:
          'A juicy beef patty with melted cheddar, tomato and hint of whine sauage split into it ',
      imagePath: 'images/desserts/dessert_1.png',
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddones: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'bacon', price: 1.99),
        Addon(name: 'Avocado', price: 1.99),
      ],
    ),
    Food(
      name: 'Classic emfje jg',
      description:
          'A juicy beef patty with melted cheddar, tomato and hint of whine sauage split into it ',
      imagePath: 'images/desserts/dessert_1.png',
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddones: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'bacon', price: 1.99),
        Addon(name: 'Avocado', price: 1.99),
      ],
    ),
    Food(
      name: 'Classic Cheeseburger',
      description:
          'A juicy beef patty with melted cheddar, tomato and hint of whine sauage split into it ',
      imagePath: 'images/desserts/dessert_1.png',
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddones: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'bacon', price: 1.99),
        Addon(name: 'Avocado', price: 1.99),
      ],
    ),
    Food(
      name: 'Classic Cheeseburger',
      description:
          'A juicy beef patty with melted cheddar, tomato and hint of whine sauage split into it ',
      imagePath: 'images/desserts/dessert_1.png',
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddones: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'bacon', price: 1.99),
        Addon(name: 'Avocado', price: 1.99),
      ],
    ),
    Food(
      name: 'Classic Cheeseburger',
      description:
          'A juicy beef patty with melted cheddar, tomato and hint of whine sauage split into it ',
      imagePath: 'images/desserts/dessert_1.png',
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddones: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'bacon', price: 1.99),
        Addon(name: 'Avocado', price: 1.99),
      ],
    ),
  ];

  // getters
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  // operations

  // user cart
  final List<CartItem> _cart = [];

  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // if the food items are same
      bool isSameFood = item.food == food;

      // if the list of selected addons are same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });
    // if already exists increase the quantity
    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;
      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  // helpers

  // generate a receit

  // format double value into money

  // format list of adons into a string summary
}
