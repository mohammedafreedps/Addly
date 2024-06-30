import 'package:addly/precentation/screens/home_screen/widgets/details_section.dart';
import 'package:addly/precentation/screens/home_screen/widgets/item_listing_section.dart';
import 'package:addly/precentation/utils/app_styles.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              itemListingSection(context: context),
              const SizedBox(height: 10,),
              detailSection(context: context)
            ],
          ),
        ),
      ),
    );
  }
}
