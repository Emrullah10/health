// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health/utils/extensions/padding_extensions.dart';

class ProfileRowWidget extends ConsumerWidget {
  final IconData icon;
  final String title;
  final String? subtitle;
  final String title2;
  final String? subtitle2;
  final IconData icon2;
  final double? tileHeight;
  final double? tileHeight2;
  final VoidCallback? onTap;
  final VoidCallback? onTap2;
  const ProfileRowWidget({
    super.key,
    required this.icon,
    required this.title,
    this.subtitle,
    required this.title2,
    this.subtitle2,
    required this.icon2,
    this.tileHeight,
    this.tileHeight2,
    this.onTap,
    this.onTap2,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Padding(
            padding: 8.allP,
            child: ListTile(
              tileColor: Colors.grey.shade300,
              leading: Icon(icon, color: Colors.blue.shade900),
              title: Text(
                title,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(subtitle ?? "", style: Theme.of(context).textTheme.bodySmall),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
              onTap: onTap,
              minTileHeight: tileHeight?.h,
            ),
          ),
        ),

        Expanded(
          child: Padding(
            padding: 8.allP,
            child: ListTile(
              tileColor: Colors.grey.shade300,
              leading: Icon(icon2, color: Colors.blue.shade900),
              title: Text(
                title2,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(subtitle2 ?? "", style: Theme.of(context).textTheme.bodySmall),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
              onTap: onTap2,
              minTileHeight: tileHeight2?.h,
            ),
          ),
        ),
      ],
    );
  }
}
