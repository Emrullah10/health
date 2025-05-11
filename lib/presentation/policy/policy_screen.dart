import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:franco/franco.dart';
import 'package:go_router/go_router.dart';
import 'package:health/base/base_scaffold.dart';
import 'package:health/utils/extensions/padding_extensions.dart';

class PolicyScreen extends ConsumerStatefulWidget {
  const PolicyScreen({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PolicyScreenState();
}

class _PolicyScreenState extends ConsumerState<PolicyScreen> {
  final imageUrl = "https://melahim.com/wp-content/uploads/2023/11/AXA_Logo.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BaseScaffold(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, size: 20.sp),
          onPressed: () => context.pop(),
        ),
        titleTextStyle: context.bodyLarge.copyWith(fontSize: 20.sp, fontWeight: FontWeight.bold),
        centerTitle: true,
        title: "Sigorta Poliçesi",
        body: Padding(
          padding: 20.allP,
          child: Column(
            children: [
              Text(
                "Hangi işlemler kapsanıyor? Sigorta kapsamını incele, farkları gör, önerileri değerlendir",
                style: context.bodyLarge.copyWith(fontSize: 20.sp),
              ),
              20.verticalSpace,
              Expanded(
                child: Container(
                  padding: 10.allP,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        title: Text(
                          "Tamamlayıcı Sağlık-AXA ",
                          style: context.bodyLarge.copyWith(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text("21.12.2023-21.12.2024", style: context.bodyMedium),
                      ),
                      Divider(color: Colors.grey, thickness: 1, indent: 0, endIndent: 0),
                      Text(
                        "Kapsam",
                        style: context.bodyLarge.copyWith(fontWeight: FontWeight.bold),
                      ),
                      5.verticalSpace,

                      // Sol ve sağ içerik yan yana
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Sol taraf - Servisler
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  _buildServiceContainer("Dahiliye", true),
                                  10.verticalSpace,
                                  _buildServiceContainer("Psikolog", false),
                                  10.verticalSpace,
                                  _buildServiceContainer(
                                    "Estetik Operasyon",
                                    false,
                                    isDetailVisible: true,
                                  ),
                                ],
                              ),
                            ),

                            15.horizontalSpace,

                            // Sağ taraf - Pie Chart
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  _buildServiceContainer("Göz Muayenesi", true),
                                  20.verticalSpace,
                                  _buildCoveragePieChart(),

                                  10.verticalSpace,
                                  Text(
                                    "25 % Hariç",
                                    style: context.bodyMedium.copyWith(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Hariç tutulanlar",
                                    style: context.bodySmall.copyWith(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          border: Border.all(color: Colors.grey, width: 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Geçtiğimiz yıl psikolog hizmeti ortalama \$450 iken , poliçen bu hizmeti kapsamıyor",
                            style: context.bodyLarge.copyWith(fontSize: 12.sp),
                          ),
                        ),
                      ),
                      5.verticalSpace,
                      Padding(
                        padding: [70, 10].horizontalAndVerticalP,
                        child: Container(
                          height: 40.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
                            color: Colors.blue.shade900,
                          ),
                          alignment: Alignment.center,
                          child: Text("Depamuk illo", style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper metotları sınıf içine taşıyın
  Widget _buildServiceContainer(String title, bool isCovered, {bool? isDetailVisible}) {
    // Mevcut implementasyon
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(
          color: isCovered ? Colors.green.shade300 : Colors.red.shade300,
          width: 2,
        ),
        color: isCovered ? Colors.green.shade50 : Colors.red.shade50,
      ),
      padding: 10.allP,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          5.verticalSpace,
          Row(
            children: [
              Icon(
                isCovered ? Icons.check_circle : Icons.cancel,
                color: isCovered ? Colors.green : Colors.red,
                size: 20.sp,
              ),
              8.horizontalSpace,
              Text(isCovered ? "Kapsanıyor" : "Kapsanmıyor"),
            ],
          ),
          if (isDetailVisible == true)
            GestureDetector(
              onTap: () {},
              child: Text("Detaylı Bilgi", style: TextStyle(color: Colors.blue.shade800)),
            ),
        ],
      ),
    );
  }

  Widget _buildCoveragePieChart() {
    return SizedBox(
      height: 100,
      width: 100,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Pie Chart
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 30,
              centerSpaceColor: Colors.white,
              sections: [
                PieChartSectionData(
                  value: 75,
                  color: Color(0xFF00205B),
                  radius: 20,
                  showTitle: false,
                ),
                PieChartSectionData(
                  value: 25,
                  color: Colors.grey.shade200,
                  radius: 20,
                  showTitle: false,
                ),
              ],
            ),
          ),

          // Center text
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "75%",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                  color: Color(0xFF00205B),
                ),
              ),
              Text("Sigorta", style: TextStyle(fontSize: 10.sp, color: Colors.black)),
              Text("Kapsam", style: TextStyle(fontSize: 10.sp, color: Colors.black)),
            ],
          ),
        ],
      ),
    );
  }
}
