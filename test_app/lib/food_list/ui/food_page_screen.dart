import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/components/app_text.dart';
import 'package:test_app/components/error_widget.dart';
import 'package:test_app/components/loading_widget.dart';
import 'package:test_app/food_list/models/food_list_model.dart';
import 'package:test_app/food_list/view_models/food_view_model.dart';
import 'package:test_app/utils/constants.dart';

class FoodPage extends StatelessWidget {
  const FoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Recipes')),
      ),
      body: Consumer<FoodViewModel>(builder: (context, foodViewModel, _) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                ui(foodViewModel),
              ],
            ),
          ),
        );
      }),
    );
  }

  ui(FoodViewModel foodViewModel) {
    if (foodViewModel.loading) {
      return const Loading();
    }
    if (foodViewModel.foodError != null) {
      return AppError(errorTxt: foodViewModel.foodError!.message.toString());
    }
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          FoodModel foodModel = foodViewModel.foodListModel[index];
          return Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SizedBox(
                    width: 200,
                    height: 200,
                    child: CachedNetworkImage(
                      imageUrl: foodModel.image,
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) =>
                              CircularProgressIndicator(
                                  value: downloadProgress.progress),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),
                ),
                AppText(
                  text: '${foodModel.name} ${foodModel.headline}',
                  textStyle: titleTextStyle,
                ),
                AppText(
                  text: foodModel.description,
                  textStyle: subTextStyle,
                ),
                AppText(
                  text: 'Calories: ${foodModel.calories}',
                  textStyle: subTextStyle,
                ),
                AppText(
                  text: 'Carbs: ${foodModel.carbos}',
                  textStyle: subTextStyle,
                ),
                AppText(
                  text: 'Fats: ${foodModel.fats}',
                  textStyle: subTextStyle,
                ),
                AppText(
                  text: 'Proteins: ${foodModel.proteins}',
                  textStyle: subTextStyle,
                ),
                AppText(
                  text: 'Difficulty: ${foodModel.difficulty}/5',
                  textStyle: subTextStyle,
                ),
                AppText(
                  text: 'Time: ${foodModel.time}',
                  textStyle: subTextStyle,
                ),
              ],
            ),
          );
        },
        itemCount: foodViewModel.foodListModel.length,
      ),
    );
  }
}
