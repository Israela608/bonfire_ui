import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:stroll_demo/core/constants/strings.dart';
import 'package:stroll_demo/core/utils/app_colors.dart';
import 'package:stroll_demo/core/utils/app_styles.dart';
import 'package:stroll_demo/core/utils/extensions.dart';
import 'package:stroll_demo/core/utils/utils.dart';
import 'package:stroll_demo/modules/components/card_option_item.dart';
import 'package:stroll_demo/modules/models/card_item.dart';

class CardTab extends StatelessWidget {
  const CardTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -15.h,
          child: getImage(
            image: 'background',
            height: 502,
            width: 375,
          ),
        ),
        Positioned(
          top: 0,
          left: -10.w,
          right: -10.w,
          bottom: 0,
          child: getImage(
            image: 'fade',
            height: 812,
            width: 375,
            fit: BoxFit.cover,
          ),
        ),
        Column(
          children: [
            59.height,
            HeaderWidget(),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                          Strings.angelina,
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
                            Strings.favouriteTime,
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
              Strings.mineIsDefinitely,
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
                  FooterWidget(),
                ],
              ),
            ),
            7.height,
          ],
        ),
      ],
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              Strings.appName,
              style: proximaStyle(
                fontSize: 34,
                color: AppColor.text4,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
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
              Strings.time,
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
              Strings.userNumber,
              style: proximaStyle(
                fontSize: 12,
                color: AppColor.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
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

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            Strings.pickOption,
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
    );
  }
}
