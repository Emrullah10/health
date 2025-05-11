import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health/utils/constant/color.dart';

class CustomElevatedButton extends ConsumerWidget {
  final String text;
  final VoidCallback? onPressed;
  final double? width;
  final double? height;
  final Color? color;
  final ButtonStyle? style;
  final TextStyle? textStyle;

  const CustomElevatedButton({
    super.key,
    required this.text,
    this.onPressed,
    this.width,
    this.height,
    this.color,
    this.style,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ButtonStyle defaultStyle = ElevatedButton.styleFrom(
      minimumSize: width != null ? Size(width?.w ?? 45.w, height?.h ?? 50.0.h) : null,
      backgroundColor: color ?? Colors.blueAccent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
    );
    final TextStyle defaultTextStyle = TextStyle(
      fontSize: 16.sp,
      color: ColorUtils.white,
    ).copyWith(fontSize: textStyle?.fontSize ?? 16.sp, color: textStyle?.color ?? ColorUtils.white);
    return SizedBox(
      width: width?.w ?? double.infinity.w,
      height: height?.h ?? 50.0.h,
      child: ElevatedButton(
        onPressed: onPressed ?? () {},
        style: style?.merge(defaultStyle) ?? defaultStyle,
        child: Text(text, style: textStyle?.merge(defaultTextStyle) ?? defaultTextStyle),
      ),
    );
  }
}
