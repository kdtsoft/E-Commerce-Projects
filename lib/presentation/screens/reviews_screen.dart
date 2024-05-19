import 'package:crafty_bay/presentation/screens/create_review_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utility/app_colors.dart';
import '../widgets/card_review_item.dart';

class ReviewsScreen extends StatefulWidget {
  const ReviewsScreen({super.key});

  @override
  State<ReviewsScreen> createState() => _ReviewsScreenState();
}

class _ReviewsScreenState extends State<ReviewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reviews"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return const CartReviewItem();
              },
            ),
          ),
          _buildReviewsWidget(),
        ],
      ),
    );
  }

}

Widget _buildReviewsWidget() {
  return Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
        color: AppColors.primaryColor.withOpacity(0.1),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        )),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         const Text("Reviews  (1000)", style: TextStyle(
          fontSize: 16, fontWeight: FontWeight.w600,
          color: Colors.grey,
        ),),
        SizedBox(
          width: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              )
            ),
            onPressed: () {
              Get.to(()=> const CreateReviewScreen());
            },
            child: const Icon(Icons.add_outlined, size: 25,),
          ),
        )
      ],
    ),
  );
}
