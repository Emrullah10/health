import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:health/routes/app_routes.dart';
import 'package:health/utils/asset_constants/assets.dart';
import 'package:health/utils/extensions/padding_extensions.dart';

class StartScreen extends ConsumerStatefulWidget {
  const StartScreen({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _StartScreenState();
}

class _StartScreenState extends ConsumerState<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: 50.onlyTopP,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(Assets.assetsImagesLogo, fit: BoxFit.cover, width: 300, height: 300),
              Text(
                'HeAlthFintel',
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  color: const Color.fromARGB(255, 6, 32, 71),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              20.verticalSpace,
              Text(
                'SAĞLIKTA AKLLI',
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  color: const Color.fromARGB(255, 6, 32, 71),
                  fontWeight: FontWeight.w400,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),

              Text(
                'FİNANSAL ŞEFFAFLIK',
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  color: const Color.fromARGB(255, 6, 32, 71),
                  fontWeight: FontWeight.w400,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: 50.allP,
                child: Builder(
                  builder: (context) {
                    return InkWell(
                      onTap: () {
                        context.go(AppRoutes.login);
                      },
                      child: Container(
                        width: double.infinity,
                        height: 70.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 6, 32, 71),
                        ),

                        child: FittedBox(
                          child: Text(
                            'Başla',
                            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
