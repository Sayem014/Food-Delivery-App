import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../models/food.dart';

class MyFoodTile extends StatelessWidget {
  final Food food;
  final void Function()? ontap;
  const MyFoodTile({
    super.key,
    required this.food,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: ontap,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                // text food details
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(food.name),
                    Text(
                      '\$' + food.price.toString(),
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      food.description,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                  ],
                )),
                const SizedBox(
                  width: 15,
                ),

                // food image
                ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Container(
                    height: 80,
                    width: 80,
                    child: Image.asset(
                      food.imagePath,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),

                // const SizedBox(
                //   width: 15,
                // ),
              ],
            ),
          ),
        ),

        //divider line
        Divider(
          color: Theme.of(context).colorScheme.tertiary,
          endIndent: 25,
          indent: 25,
        ),
      ],
    );
  }
}
