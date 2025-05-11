// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health/base/base_scaffold.dart';
import 'package:health/presentation/process/widgets/porcess_card_widget.dart';
import 'package:health/utils/extensions/padding_extensions.dart';
import 'package:health/utils/widgets/custom_elevated_button.dart';

class PastProcess extends ConsumerWidget {
  const PastProcess({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BaseScaffold(
      title: 'Geçmiş İşlemler',
      centerTitle: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: 20.onlyLeftP,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomElevatedButton(
                  text: "Filtrele",
                  textStyle: TextStyle(
                    color: Colors.blue.shade900,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                  width: 100,
                  height: 40,
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue.shade100),
                ),
                20.verticalSpace,
                PastProcessCard(
                  title: "Diz Mr",
                  date: "14 Nisan 2024",
                  hospitalName: "Özel Ayva Hastane",
                  insuranceCoverage: "Sigorta Kapsamı %90",
                  price: "₺300",
                ),
                10.verticalSpace,
                PastProcessCard(
                  title: "Kan Tahlili",
                  date: "28 Mart 2024",
                  hospitalName: "Anadolu Hastane",
                  insuranceCoverage: "Sigorta Kapsamı %100",
                  price: "₺50",
                ),
                10.verticalSpace,
                PastProcessCard(
                  title: "Karın  Ultrasonu",
                  date: "8 Şubat 2024",
                  hospitalName: "Çınar Tıp Merkezi",
                  insuranceCoverage: "Sigorta Kapsamı %0",
                  price: "₺200",
                ),
                10.verticalSpace,
                PastProcessCard(
                  title: "Ekokardiyografi",
                  date: "20 Ocak 2024",
                  hospitalName: "Güven Hastahanesi",
                  insuranceCoverage: "Sigorta Kapsamı %80",
                  price: "₺400",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
