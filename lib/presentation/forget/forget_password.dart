import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:health/routes/app_routes.dart';
import 'package:health/utils/asset_constants/assets.dart';
import 'package:health/utils/constant/string.dart';
import 'package:health/utils/extensions/padding_extensions.dart';
import 'package:health/utils/widgets/custom_elevated_button.dart';
import 'package:health/utils/widgets/custom_text_field.dart';

class ForgetPasswordScreen extends ConsumerWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text(StringConstant.forgetPassword), backgroundColor: Colors.blue),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(Assets.assetsImagesLogo, width: 300.w, height: 200.h, fit: BoxFit.cover),
            Padding(
              padding: 10.allP.copyWith(top: 20, bottom: 0),
              child: CustomTextFormField(
                decoration: InputDecoration(
                  labelText: StringConstant.mail,
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            20.verticalSpace,
            Padding(
              padding: 10.allP.copyWith(top: 0, bottom: 20),
              child: CustomTextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: StringConstant.newPassword,
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(icon: const Icon(Icons.visibility_off), onPressed: () {}),
                ),
              ),
            ),
            CustomElevatedButton(
              width: 200.w,
              text: StringConstant.resetPassword,
              onPressed: () {
                context.go(AppRoutes.login);
              },
            ),
          ],
        ),
      ),
    );
  }
}
