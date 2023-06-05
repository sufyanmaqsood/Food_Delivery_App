import 'package:flutter/material.dart';
import 'package:meal_delivery/utils/dimensions.dart';
import 'package:meal_delivery/widgets/expandable_text_widget.dart';
import '../../utils/colors.dart';
import '../../widgets/app_column.dart';
import '../../widgets/app_icon.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icons_and_text_widgets.dart';
import '../../widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background image
          Positioned(
            top: Dimensions.height45,
            left: 0,
            right: 0,
            child: Container(
              // margin: EdgeInsets.only(top: Dimensions.height45),
              width: double.maxFinite,
              height: Dimensions.popularFoodImgSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      'assets/images/american-chop-suey-chopsuey-is-popular-indochinese-food-served-bowl-with-chop-sticks-selective-focus.png'),
                ),
              ),
            ),
          ),
          //Icon Widgets
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.arrow_back_ios,
                ),
                AppIcon(
                  icon: Icons.shopping_cart_outlined,
                ),
              ],
            ),
          ),
          // introduction of food
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularFoodImgSize + 45,
            child: Container(
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
                top: Dimensions.height20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20)),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(
                    text: 'Chinese Side',
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  BigText(text: 'Introduce'),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  //ExpandableTextWidget is custom class
                  Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableTextWidget(
                        text:
                            'expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget expandable text widget ',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(
          top: Dimensions.height30,
          bottom: Dimensions.height30,
          left: Dimensions.width20,
          right: Dimensions.width20,
        ),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20 * 2),
            topRight: Radius.circular(Dimensions.radius20 * 2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.height20,
                bottom: Dimensions.height20,
                left: Dimensions.width20,
                right: Dimensions.width20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.remove,
                    color: AppColors.signColor,
                  ),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  BigText(text: '0'),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  Icon(
                    Icons.add,
                    color: AppColors.signColor,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.height20,
                bottom: Dimensions.height20,
                left: Dimensions.width20,
                right: Dimensions.width20,
              ),
              child: BigText(
                text: '\$10 | Add to cart',
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColors.mainColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
