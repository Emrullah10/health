import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health/utils/asset_constants/assets.dart';
import 'package:health/utils/constant/string.dart';
import 'package:health/utils/extensions/padding_extensions.dart';
import 'package:health/utils/widgets/custom_elevated_button.dart';
import 'package:health/utils/widgets/custom_text_field.dart';

class Register extends ConsumerStatefulWidget {
  const Register({super.key});

  @override
  ConsumerState<Register> createState() => _SignupScreenState();
}

class _SignupScreenState extends ConsumerState<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text(StringConstant.signUp), backgroundColor: Colors.blue),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(Assets.assetsImagesLogo, width: 300.w, height: 200.h, fit: BoxFit.cover),
            Padding(
              padding: 10.allP.copyWith(bottom: 0),
              child: CustomTextFormField(
                decoration: InputDecoration(
                  labelText: StringConstant.username,
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            20.verticalSpace,
            Padding(
              padding: 10.allP.copyWith(bottom: 0),
              child: CustomTextFormField(
                decoration: InputDecoration(
                  labelText: StringConstant.mail,
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            20.verticalSpace,
            Padding(
              padding: 10.allP.copyWith(bottom: 20, top: 0),
              child: CustomTextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: StringConstant.password,
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(icon: Icon(Icons.visibility_off), onPressed: () {}),
                ),
              ),
            ),
            Padding(
              padding: 10.allP.copyWith(bottom: 20),
              child: CustomTextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: StringConstant.retryPassword,
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(icon: Icon(Icons.visibility_off), onPressed: () {}),
                ),
              ),
            ),
            20.verticalSpace,
            CustomElevatedButton(text: StringConstant.signUp, onPressed: () {}, width: 150.w),
          ],
        ),
      ),
    );
  }
}
