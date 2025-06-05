import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:stroll_demo/core/utils/app_colors.dart';
import 'package:stroll_demo/core/utils/app_styles.dart';
import 'package:stroll_demo/core/utils/extensions.dart';
import 'package:stroll_demo/core/utils/utils.dart';

class CardTab extends StatelessWidget {
  const CardTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          59.height,
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Stroll Bonfire',
                style: proximaStyle(
                  fontSize: 34,
                  color: AppColor.text4,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Container(
                height: 40.w,
                width: 40.h,
                child: getSvg(
                  svg: 'arrow-down',
                  height: 5.33,
                  width: 10,
                  fit: BoxFit.scaleDown,
                ),
              )
            ],
          ),
          2.height,
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              getSvg(
                svg: 'clock',
                height: 15,
                width: 13,
              ),
              3.27.width,
              Text(
                '22h 00m',
                style: proximaStyle(
                  fontSize: 12,
                  color: AppColor.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              9.73.width,
              getSvg(
                svg: 'user-small',
                height: 13,
                width: 10,
              ),
              3.27.width,
              Text(
                '103',
                style: proximaStyle(
                  fontSize: 12,
                  color: AppColor.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          316.height,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w),
            child: Row(
              children: [
                getImage(
                  image: 'photo',
                  height: 50,
                  width: 50,
                ),
                14.width,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Angelina, 28',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          color: AppColor.primaryText,
                        ),
                      ),
                      12.height,
                      Padding(
                        padding: EdgeInsets.only(left: 5.w),
                        child: Text(
                          'What is your favorite time of the day?',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: AppColor.primaryText,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          9.height,
          Text(
            '“Mine is definitely the peace in the morning.”',
            style: proximaStyle(
              fontSize: 12,
              color: AppColor.text4,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.italic,
            ),
          ),
          14.height,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                CardOptions(),
                11.height,
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Pick your option.\nSee who has a similar mind.',
                        style: proximaStyle(
                          fontSize: 12,
                          color: AppColor.secondaryText,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        getSvg(
                          svg: 'mic',
                          height: 48,
                          width: 48,
                        ),
                        6.width,
                        getSvg(
                          svg: 'forward',
                          height: 48,
                          width: 48,
                        ),
                      ],
                    ),
                    3.5.width,
                  ],
                ),
              ],
            ),
          ),
          7.height,
        ],
      ),
    );
  }
}

class CardOptions extends HookWidget {
  const CardOptions({super.key});

  @override
  Widget build(BuildContext context) {
    final selected = useState<String?>(null);

    return StaggeredGrid.count(
      crossAxisCount: 2,
      mainAxisSpacing: 12.h,
      crossAxisSpacing: 12.w,
      children: CardItem.allCardItems.map((value) {
        CardItem item = value;

        //StaggeredGridTile.count() - If you want the child to have equal height and width
        //StaggeredGridTile.fit() - If you want the child to fit it's own height
        //StaggeredGridTile.extent() - If you want to set custom height for the child
        return StaggeredGridTile.fit(
          crossAxisCellCount: 1,
          child: CardOptionsItem(
            letter: item.letter,
            text: item.text,
            isSelected: selected.value == item.letter,
            onPress: () => selected.value = item.letter,
          ),
        );
      }).toList(),
    );
  }
}

class CardItem {
  final String letter;
  final String text;

  const CardItem({
    required this.letter,
    required this.text,
  });

  static List allCardItems = [
    CardItem(
      letter: 'A',
      text: 'The peace in the early mornings',
    ),
    CardItem(
      letter: 'B',
      text: 'The magical golden hours',
    ),
    CardItem(
      letter: 'C',
      text: 'Wind-down time after dinners',
    ),
    CardItem(
      letter: 'D',
      text: 'The serenity past midnight',
    ),
  ];
}

class CardOptionsItem extends StatelessWidget {
  const CardOptionsItem({
    super.key,
    required this.letter,
    required this.text,
    required this.isSelected,
    required this.onPress,
  });

  final String letter;
  final String text;
  final bool isSelected;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.only(
          left: 10.w,
          right: 9.w,
          top: 13.5.h,
          bottom: 13.5.h,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: AppColor.card,
          border: isSelected
              ? Border.all(
                  width: 2.h,
                  color: AppColor.primary,
                )
              : null,
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 10.r,
              backgroundColor: isSelected ? AppColor.primary : AppColor.text2,
              child: CircleAvatar(
                radius: 9.r,
                backgroundColor: isSelected ? AppColor.primary : AppColor.card,
                child: Text(
                  letter,
                  style: proximaStyle(
                    fontSize: 12,
                    color: isSelected ? AppColor.primaryText : AppColor.text4,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            9.width,
            Expanded(
              child: Text(
                text,
                style: proximaStyle(
                  fontSize: 14,
                  color: AppColor.text4,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
