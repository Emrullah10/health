import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:franco/franco.dart';
import 'package:go_router/go_router.dart';
import 'package:health/routes/app_routes.dart';
import 'package:health/utils/asset_constants/assets.dart';
import 'package:health/utils/constant/color.dart';
import 'package:health/utils/constant/string.dart';
import 'package:health/utils/extensions/padding_extensions.dart';
import 'package:health/utils/mixins/login_mixin.dart';
import 'package:health/utils/widgets/custom_elevated_button.dart';
import 'package:health/utils/widgets/custom_text_field.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> with LoginMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: 40.onlyTopP,
              child: Image.asset(
                Assets.assetsImagesLogo,
                width: 300.w,
                height: 200.h,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: 10.allP.copyWith(bottom: 0, top: 40),
              child: CustomTextFormField(labelText: StringConstant.username),
            ),
            20.verticalSpace,
            Padding(
              padding: 10.allP.copyWith(bottom: 20),
              child: CustomTextFormField(
                labelText: StringConstant.password,
                obscureText: false,
                suffixIcon: IconButton(
                  icon: Icon(isPasswordField ? Icons.visibility_off : Icons.visibility),
                  onPressed: togglePasswordVisibility,
                ),
              ),
            ),
            Padding(
              padding: 20.paddingOnlyBottom,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        value: rememberMe,
                        onChanged: toggleRememberMe,
                      ),
                      Text(
                        StringConstant.rememberMe,
                        style: context.bodyMedium.copyWith(fontSize: 16.sp),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () => context.push(AppRoutes.forgotPassword),
                    child: Text(
                      StringConstant.forgetPassword,
                      style: context.displayMedium.copyWith(
                        fontSize: 16.sp,
                        color: ColorUtils.deepBlue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: 10.onlyBottomP,
              child: CustomElevatedButton(
                text: StringConstant.signIn,
                onPressed: () => context.go(AppRoutes.profile),
                width: 200.w,
                height: 50.h,
                color: ColorUtils.deepBlue,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  StringConstant.notAccount,
                  style: TextStyle(fontSize: 16.sp, color: ColorUtils.black),
                ),
                TextButton(
                  onPressed: () => context.push(AppRoutes.register),
                  child: Text(
                    StringConstant.signUp,
                    style: context.displayMedium.copyWith(
                      fontSize: 16.sp,
                      color: ColorUtils.deepBlue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: ColorUtils.white,
              ),
              alignment: Alignment.center,
              height: 120.h,
              width: 300.w,

              child: ListTile(
                tileColor: Colors.blue[50], // ListTile'ın arka plan rengini değiştirme
                leading: Icon(Icons.lock, color: Colors.blue[800]), // Ikon rengi
                title: Text(StringConstant.information, style: context.bodyMedium), // Metin rengi
              ),
            ),
          ],
        ),
      ),
    );
  }
}
