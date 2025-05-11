import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health/utils/extensions/padding_extensions.dart';

class PastProcessCard extends ConsumerWidget {
  const PastProcessCard({
    super.key,
    required this.title,
    this.date,
    this.hospitalName,
    this.insuranceCoverage,
    this.price,
  });
  final String? title;
  final String? date;
  final String? hospitalName;
  final String? insuranceCoverage;
  final String? price;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      elevation: 5,
      surfaceTintColor: Colors.grey.shade500,
      margin: 10.allP.copyWith(left: 0),
      child: Padding(
        padding: 10.allP,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title ?? "", style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold)),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue.shade900,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Padding(
                    padding: 5.allP,
                    child: Text("Kapsandı", style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
            5.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(date ?? ""),
                Text(
                  price ?? "",
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            5.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text(hospitalName ?? ""), Text(insuranceCoverage ?? "")],
            ),
          ],
        ),
      ),
    );
  }
}
