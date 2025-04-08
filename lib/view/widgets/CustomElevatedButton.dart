import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health/utils/constant/color.dart';

class CustomElevatedButton extends ConsumerWidget {
  final String text; // Butonun metni
  final VoidCallback? onPressed; // OnPressed fonksiyonu, opsiyonel
  final double? width; // Opsiyonel genişlik
  final double? height; // Opsiyonel yükseklik
  final Color? color; // Opsiyonel arka plan rengi

  const CustomElevatedButton({
    super.key,
    required this.text,
    this.onPressed, // OnPressed zorunlu değil
    this.width, // Genişlik opsiyonel
    this.height, // Yükseklik opsiyonel
    this.color, // Renk opsiyonel
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: width ?? double.infinity, // Genişlik verilmediyse, tam genişlik kullanılır
      height: height ?? 50.0, // Yükseklik verilmediyse, varsayılan 50.0 kullanılır
      child: ElevatedButton(
        onPressed:
            onPressed ??
            () {}, // Eğer onPressed verilmediyse, boş bir fonksiyon kullanılır (buton tıklanabilir ama hiçbir şey yapmaz)
        style: ElevatedButton.styleFrom(
          backgroundColor:
              color ?? Colors.blueAccent, // Arka plan rengi verilmediyse varsayılan mavi
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // Buton köşe yuvarlama
          ),
        ),
        child: Text(text, style: TextStyle(fontSize: 16, color: ColorUtils.white)), // Buton metni
      ),
    );
  }
}
