// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:health/base/base_scaffold.dart';
import 'package:health/presentation/profile/widget/profile_row_widget.dart';
import 'package:health/routes/app_routes.dart';
import 'package:health/utils/asset_constants/assets.dart';
import 'package:health/utils/extensions/padding_extensions.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BaseScaffold(
      showAppBar: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: 10.onlyLeftP,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          Assets.assetsImagesLogo,
                          fit: BoxFit.cover,
                          width: 100,
                          height: 100,
                        ),
                        5.horizontalSpace,
                        Text(
                          'HeAlthFintel',
                          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                            color: Colors.blue.shade900,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    CircleAvatar(backgroundImage: AssetImage(Assets.assetsImagesLogo), radius: 40),
                  ],
                ),

                Padding(
                  padding: 5.onlyLeftP,
                  child: ListTile(
                    title: Text(
                      "Merhaba, Ahmet!",
                      style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        color: Colors.blue.shade900,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text('10 Mayıs 2024', style: Theme.of(context).textTheme.bodyLarge),
                  ),
                ),
                ProfileRowWidget(
                  icon: Icons.wallet,
                  title: "Harcama Takibi",
                  subtitle: "Bu ay 1250 TL Harcandı",
                  icon2: Icons.shield_moon,
                  title2: "Sigorta Durumu",
                  subtitle2: "%75 Kapsama Oranı",
                ),
                ProfileRowWidget(
                  icon: Icons.bubble_chart,
                  title: "AI Tavsiyen",
                  subtitle: "Bir yeni bildiriminiz var",
                  tileHeight: 100,
                  title2: "Geçmiş İşlemler",
                  icon2: Icons.lock_clock,
                  subtitle2: "22 İşlem Görüntülendi",
                ),
                ProfileRowWidget(
                  icon: Icons.book,
                  title: "Poliçe Bilgisi",
                  subtitle: "AXA Tanımlayıcı Aktif",
                  onTap: () {
                    context.push(AppRoutes.policy);
                  },
                  title2: "Talep Oluştur",
                  icon2: Icons.add,
                  subtitle2: "Yeni talep oluştur",
                ),

                ProfileRowWidget(
                  icon: Icons.local_hospital_outlined,
                  title: "Hastahane Ara",
                  subtitle: "2 bulundu",
                  tileHeight2: 80,
                  title2: "Raporlarım",
                  icon2: Icons.bookmark_outline_outlined,
                  subtitle2: "2 PDF indirildi",
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    onTap: () {
                      context.push(AppRoutes.notification);
                    },
                    trailing: Icon(Icons.arrow_forward_ios, color: Colors.blue.shade900),
                    tileColor: Colors.grey.shade200,
                    title: Text(
                      'Bildirimler',
                      style: Theme.of(
                        context,
                      ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      '2 kritik uyarı/ayarları',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
