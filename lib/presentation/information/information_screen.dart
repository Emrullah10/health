import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:health/base/base_scaffold.dart';
import 'package:health/routes/app_routes.dart';
import 'package:health/utils/asset_constants/assets.dart';
import 'package:health/utils/extensions/padding_extensions.dart';
import 'package:health/utils/widgets/custom_elevated_button.dart';
import 'package:health/utils/widgets/custom_list_tile.dart';

class InformationScreen extends ConsumerWidget {
  const InformationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BaseScaffold(
      showAppBar: false,

      body: Center(
        child: Padding(
          padding: 20.allP,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(Assets.assetsImagesLogo, fit: BoxFit.cover, width: 100, height: 100),
                  5.horizontalSpace,
                  Text(
                    'HeAlthFintel',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.blue.shade900,
                      fontWeight: FontWeight.bold,
                      fontSize: 40.sp,
                    ),
                  ),
                ],
              ),
              CustomListTile(
                title: "Bu Ayki Harcaman",
                titleStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Colors.blue.shade900,
                  fontWeight: FontWeight.bold,
                ),
                subtitle: "1500 TL",
                subtitleStyle: Theme.of(context).textTheme.displayMedium?.copyWith(
                  color: Colors.blue.shade900,
                  fontWeight: FontWeight.bold,
                ),
                tileColor: Colors.grey.shade200,
                padding: 10.allP.copyWith(right: 0),
              ),
              20.verticalSpace,
              CustomListTile(
                title: "Sigorta Karşılama Oranı",
                titleStyle: Theme.of(
                  context,
                ).textTheme.bodyLarge?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                subtitle: "85%",
                subtitleStyle: Theme.of(context).textTheme.displayMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                tileColor: Colors.blue.shade900,
                padding: 10.allP.copyWith(right: 30),
                trailing: SizedBox(
                  width: 80.r,
                  height: 990.r,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        width: 70.r,
                        height: 70.r,
                        child: CircularProgressIndicator(
                          value: 0.85, // 85%
                          strokeWidth: 8.r,
                          // ignore: deprecated_member_use
                          backgroundColor: Colors.white.withOpacity(0.2),
                          valueColor: const AlwaysStoppedAnimation<Color>(Colors.lightBlue),
                        ),
                      ),
                      Text(
                        '85%',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              20.verticalSpace,

              Container(
                padding: 10.allP,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Colors.blue.shade900,
                ),

                height: 160.h,
                width: 500.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Yapay Zeka Önerin Hazır",
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp,
                      ),
                    ),
                    5.verticalSpace,
                    Text(
                      "Tasarruf etmenize yardımcı olacak öneriyi görüntüleyin!",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    5.verticalSpace,
                    CustomElevatedButton(
                      onPressed: () {
                        context.go(AppRoutes.ai);
                      },
                      text: "Görüntüle",
                      width: 120,
                      color: Colors.blue.shade700,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
