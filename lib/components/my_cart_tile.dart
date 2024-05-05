import 'package:flutter/material.dart';
import 'package:food_delivery_app_with_backend/models/cart_item.dart';
import 'package:food_delivery_app_with_backend/models/food.dart';
import 'package:food_delivery_app_with_backend/models/restaurant.dart';
import 'package:provider/provider.dart';

import 'my_quantity_selecctor.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({
    super.key,
    required this.cartItem,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(0),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    // food image
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.asset(
                        cartItem.food.imagePath,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),

                    // name and price
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // food name
                        Text(cartItem.food.name),
                        // food price
                        Text('\$ ' + cartItem.food.price.toString()),
                      ],
                    ),
                    const Spacer(),

                    // increment or decrement
                    MyQuantitySelector(
                        quantity: cartItem.quantity,
                        food: cartItem.food,
                        onDecrement: () {
                          restaurant.removeFromCart(cartItem);
                        },
                        onIncrement: () {
                          restaurant.addToCart(
                              cartItem.food, cartItem.selectedAddons);
                        }),
                  ],
                ),
              ),
              // addons
              SizedBox(
                height: cartItem.selectedAddons.isEmpty ? 0 : 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: cartItem.selectedAddons
                      .map((addon) => FilterChip(
                            label: Row(
                              children: [
                                //addon name
                                Text(addon.name),
                                // addon price
                                Text(addon.price.toString()),
                              ],
                            ),
                            onSelected: (value) {},
                          ))
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
