import 'package:flutter/material.dart';
import 'package:fs01/common/widgets/stateless/screen_values.dart';
import 'package:fs01/modules/fs01_05/models/data/photo/image.dart';
import 'package:fs01/modules/fs_07/widgets/background_gradient.dart';
import 'package:fs01/modules/fs_07/widgets/background_image.dart';
import 'package:fs01/modules/fs_07/widgets/subtitle.dart';
import 'package:fs01/modules/fs_07/widgets/title.dart';
import 'package:fs01/themes/app_assets.dart';
import 'package:fs01/themes/app_colors.dart';
import 'package:fs01/themes/app_styles.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenValues _screenValues = ScreenValues(context);
    return Stack(
      children: [
        BackgroundImage(),
        BackgroundGradient(),
        Column(
          children: [
            SizedBox(
              height: _screenValues.sizeH(39.5),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Align(
                alignment: Alignment.topLeft,
                child: TitleWidget(
                  title: 'Find new',
                  title2: 'friends nearby',
                ),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SubtitleWidget(
                title:
                    'With milions of users all over the world, we gives you the ability to connect with people no matter where you are.',
              ),
            ),
            SizedBox(
              height: 44,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Log In',
                style: AppStyle.h4.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColor.pinkLinear,
                ),
              ),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(
                  Size(315, 44),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22.0),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all(AppColor.white),
                shadowColor: MaterialStateProperty.all(Colors.transparent),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: AppColor.buttonGradientColor,
                borderRadius: BorderRadius.circular(22.0),
              ),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Sign Up',
                  style: AppStyle.h4.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0),
                    ),
                  ),
                  minimumSize: MaterialStateProperty.all(
                    Size(315, 44),
                  ),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                  shadowColor: MaterialStateProperty.all(Colors.transparent),
                ),
              ),
            ),
            SizedBox(
              height: 48,
            ),
            Text(
              'Or log in with',
              style: AppStyle.time.copyWith(fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 18,
            ),
            SizedBox(

              child: Row(
                children: [
                 TextButton(onPressed: (){}, child: Text('data',style: TextStyle(color: AppColor.white),)),
                  TextButton(onPressed: (){}, child: Text('data')),
                  TextButton(onPressed: (){}, child: Text('data')),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
//ElevatedButton.styleFrom(
//                   primary: Colors.transparent,
//                   fixedSize: Size(315, 44),
//                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
//                 )
