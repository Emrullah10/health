// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health/utils/widgets/custom_elevated_button.dart';

class CustomListTile extends ConsumerWidget {
  const CustomListTile({
    super.key,
    this.leading,
    this.title,
    this.subtitle,
    this.trailing,
    this.subtitleIcon,
    this.titleStyle,
    this.subtitleStyle,
    this.onTap,
    this.shape,
    this.tileColor,
    this.padding,
  });
  final Widget? leading;
  final String? title;
  final String? subtitle;
  final Widget? trailing;
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  final VoidCallback? onTap;
  final ShapeBorder? shape;
  final Color? tileColor;
  final EdgeInsets? padding;
  final IconData? subtitleIcon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextStyle defaultTitleStyle = Theme.of(
      context,
    ).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.bold);
    final ShapeBorder defaultShape = RoundedRectangleBorder(borderRadius: BorderRadius.circular(8));
    final TextStyle defaultSubtitleStyle = Theme.of(
      context,
    ).textTheme.bodySmall!.copyWith(color: Colors.grey.shade600);
    return ListTile(
      leading: leading,
      title: Text(title ?? 'Title', style: titleStyle ?? defaultTitleStyle),
      subtitle:
          subtitle != null
              ? Row(
                children: [
                  Text(subtitle!, style: subtitleStyle ?? defaultSubtitleStyle),
                  if (subtitleIcon != null) ...[
                    SizedBox(width: 4),
                    Icon(subtitleIcon, size: 16, color: Colors.grey.shade600),
                    CustomElevatedButton(
                      text: "Yol Tarifi Al",
                      onPressed: () {},
                      color: Colors.blue.shade900,
                    ),
                  ],
                ],
              )
              : null,
      trailing: trailing,
      onTap: onTap,
      shape: shape ?? defaultShape,
      tileColor: tileColor ?? Colors.white,
      contentPadding: padding,
    );
  }
}
