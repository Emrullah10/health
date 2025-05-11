import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:franco/franco.dart';
import 'package:health/base/base_scaffold.dart';
import 'package:health/utils/extensions/padding_extensions.dart';
import 'package:health/utils/widgets/custom_elevated_button.dart';

class AIScreen extends ConsumerWidget {
  const AIScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BaseScaffold(
      backgroundColor: Colors.blue.shade50,
      showAppBar: false,
      body: Padding(
        padding: 10.onlyLeftP,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                child: Padding(
                  padding: 40.onlyTopP,
                  child: const Text(
                    "Yapay Zeka Önerin Hazır ",
                    style: TextStyle(fontSize: 40),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                child: Card(
                  elevation: 5,
                  surfaceTintColor: Colors.blue.shade900,
                  margin: 10.allP.copyWith(left: 0),
                  child: Padding(
                    padding: 10.allP,
                    child: Consumer(
                      builder: (context, ref, child) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bu işlem için tahmini ödemen:",
                              style: context.headlineSmall.copyWith(fontWeight: FontWeight.bold),
                            ),
                            5.verticalSpace,
                            Text(
                              "470 TL",
                              style: context.displayMedium.copyWith(fontWeight: FontWeight.bold),
                            ),
                            5.verticalSpace,
                            Text(
                              "Geçmiş işlemler ve sigorta poliçene göre hesaplandı.",
                              style: context.bodyLarge,
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
              10.verticalSpace,
              SizedBox(
                child: Card(
                  elevation: 5,
                  surfaceTintColor: Colors.blue.shade900,
                  // Marjinleri düzgün ayarlayalım
                  margin: 10.allP.copyWith(left: 0),
                  child: Padding(
                    padding: 16.allP, // Daha tutarlı padding
                    child: Column(
                      // SizedBox'ı kaldırdık
                      crossAxisAlignment: CrossAxisAlignment.start, // Tüm genişliği kullan
                      children: [
                        Text(
                          "%85 Sigorta Karşılıyor",
                          style: context.headlineSmall.copyWith(fontWeight: FontWeight.bold),
                        ),
                        12.verticalSpace, // Biraz daha fazla boşluk
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: LinearProgressIndicator(
                            value: 0.85,
                            minHeight: 12.h, // Biraz daha kalın bar
                            color: Colors.blue.shade900,
                            backgroundColor: Colors.blueAccent.shade100,
                          ),
                        ),
                        12.verticalSpace,
                        Text("Kapsam dışı tutar: 70 TL", style: context.bodyLarge),
                      ],
                    ),
                  ),
                ),
              ),
              10.verticalSpace,
              SizedBox(
                child: Card(
                  elevation: 5,
                  surfaceTintColor: Colors.blue.shade900,
                  margin: 10.allP.copyWith(left: 0),
                  child: ListTile(
                    title: Text(
                      "En uygun Hastane/Kurum",
                      style: context.displaySmall.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 28.sp,
                      ),
                    ),
                    subtitle: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Medicane Kadıköy",
                              style: context.displaySmall.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 25.sp,
                              ),
                            ),
                            5.verticalSpace,
                            Wrap(
                              spacing: 10,
                              children: [
                                Icon(Icons.star, color: Colors.blue.shade900, size: 20.sp),
                                Text(
                                  "4.8/5  2,1 km",
                                  style: context.bodyLarge.copyWith(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Spacer(),
                        Expanded(
                          flex: 9,
                          child: CustomElevatedButton(
                            color: Colors.blue.shade900,
                            text: "Yol Tarifi Al",
                            onPressed: () {},
                            textStyle: context.bodyMedium.copyWith(
                              fontSize: 12.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              10.verticalSpace,
              Card(
                elevation: 5,
                surfaceTintColor: Colors.blue.shade900,
                margin: 10.allP.copyWith(left: 0),
                child: ListTile(
                  title: Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    children: [
                      Icon(Icons.compare_arrows_rounded, color: Colors.blue.shade900, size: 30.sp),
                      Text(
                        "Farklı seçenekleri karşılaştır",
                        style: context.bodyLarge.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp,
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios, color: Colors.blue.shade900, size: 30.sp),
                    ],
                  ),
                  subtitle: Card(
                    elevation: 5,
                    surfaceTintColor: Colors.white,
                    child: ListTile(
                      title: RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: Padding(
                                padding: EdgeInsets.only(right: 8.0),
                                child: Icon(
                                  Icons.lightbulb_outline_rounded,
                                  color: Colors.blue.shade900,
                                  size: 20.sp,
                                ),
                              ),
                            ),
                            TextSpan(
                              text:
                                  "Son 3 ayda benzer işlemler ortalama ödemen 520 TL idi. Bunlarda sigorta oranı %80",
                              style: context.bodyLarge.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
