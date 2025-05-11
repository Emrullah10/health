// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:health/base/base_scaffold.dart';
import 'package:health/utils/asset_constants/assets.dart';
import 'package:health/utils/extensions/padding_extensions.dart';

class NotiScreen extends ConsumerStatefulWidget {
  const NotiScreen({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _NotiScreenState();
}

class _NotiScreenState extends ConsumerState<NotiScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      title: 'BİLDİRİMLER',
      centerTitle: true,
      showAppBar: true,
      titleTextStyle: TextStyle(fontSize: 27),
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios, size: 20),
        onPressed: () => context.pop(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          NotiItem(
            alignment: MainAxisAlignment.start,
            isTitle: true,
            titleText: "Poliçe Süresi Yaklaşıyor",
            subtitleText: "Sigorta poliçeniz 21.12.2023 tarihinde sona erecektir.",
            trailingText: "şimdi",
            icon: Icons.calendar_month,
            isSubtitle: true,
            isSurfating: true,
            iconColor: Colors.blue,
          ),
          NotiItem(
            alignment: MainAxisAlignment.start,
            isTitle: true,
            titleText: "Kapsam Dışı İşlem",
            subtitleText: "28 Mayıstaki işleminiz sigorta kapsamı dışındadır.",
            trailingText: "Bilgi",
            icon: Icons.cancel,
            isSubtitle: true,
            iconColor: Colors.red,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Yapay Zeka",
              style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          NotiItem(
            alignment: MainAxisAlignment.center,
            isTitle: false,
            subtitleText: "Akllı Tetkik pkatlerine göre 100\$'a kadar tasarruf edebilirsin",
            trailingText: "şimdi",
            icon: Icons.priority_high, // Daire içinde ünlem
            isSubtitle: true,
            iconColor: Colors.blue, // Uyarı rengi olarak
          ),

          ListTile(
            leading: FittedBox(child: Image.asset(Assets.assetsImagesLogo)),
            minLeadingWidth: 0,
            title: Text(
              "HeAlthFintel",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 12, 48, 78),
              ),
            ),
            trailing: Text("2 saat önce", style: TextStyle(fontSize: 12)),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class NotiItem extends StatelessWidget {
  final String? titleText;
  final String? subtitleText;
  final String trailingText;
  final IconData icon;
  bool? isSubtitle = true;
  bool? isTitle = true;
  bool? isSurfating = false;
  MainAxisAlignment? alignment;
  final Color iconColor;
  NotiItem({
    super.key,
    this.titleText,
    this.subtitleText,
    required this.trailingText,
    required this.icon,
    this.isSubtitle,
    this.isSurfating,
    required this.iconColor,
    this.isTitle,
    this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: 8.allP,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue.shade900, width: 2),
        borderRadius: BorderRadius.circular(10),
        color: isSurfating == true ? Colors.blue.shade100 : null,
      ),
      child: ListTile(
        leading: Column(
          mainAxisAlignment: alignment ?? MainAxisAlignment.center,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: iconColor),

              child: Icon(icon, size: 30, color: Colors.white),
            ),
          ],
        ),
        title:
            isTitle == true
                ? Text(titleText ?? "", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                : null,
        subtitle: isSubtitle! ? Text(subtitleText!) : null,
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [Text(trailingText)],
        ),
      ),
    );
  }
}
