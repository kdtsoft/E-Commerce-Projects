import 'package:crafty_bay/presentation/utility/app_colors.dart';
import 'package:crafty_bay/presentation/utility/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:item_count_number_button/item_count_number_button.dart';

class CartReviewItem extends StatefulWidget {
  const CartReviewItem({super.key});

  @override
  State<CartReviewItem> createState() => _CartReviewItemState();
}

class _CartReviewItemState extends State<CartReviewItem> {
  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 4,
      surfaceTintColor: Colors.white,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  child: Icon(Icons.person),
                ),

                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Rabbil Hasan",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 8),
            Text(
                """There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.""")
          ],
        ),
      ),
    );
  }
}
