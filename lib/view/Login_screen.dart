import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health/utils/constant/color.dart';
import 'package:health/utils/exentions/padding_exentions.dart';
import 'package:health/view/home_page.dart';
import 'package:health/view/widgets/CustomElevatedButton.dart';
import 'package:health/view/widgets/CustomTextField.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  bool isPasswordField = true; // Başlangıçta şifre gizli
  bool value = false; // Başlangıçta checkbox işaretli değil
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: [10, 50, 0, 0].paddingLTRB,
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Giriş Yap",
                  style: TextStyle(
                    fontSize: 50,
                    color: ColorUtils.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: [10, 100, 10, 0].paddingLTRB,
              child: const CustomTextField(labelText: "Kullanıcı Adı"),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: [10, 10, 10, 20].paddingLTRB,
              child: CustomTextField(
                labelText: "Şifre",
                isPasswordField: isPasswordField,
                suffixIcon: IconButton(
                  icon: Icon(isPasswordField ? Icons.visibility_off : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      isPasswordField = !isPasswordField;
                    });
                  },
                ),
              ),
            ),
            Padding(
              padding: [0, 0, 0, 20].paddingLTRB,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        value: value,
                        onChanged: (value) {
                          setState(() {
                            this.value = value!;
                          });
                        },
                      ),
                      Text("Beni Hatırla"),
                    ],
                  ),
                  TextButton(onPressed: () {}, child: Text("Şifremi Unuttum")),
                ],
              ),
            ),
            Padding(
              padding: 10.onlyBottomP,
              child: CustomElevatedButton(
                text: "Giriş Yap",
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
                width: 200,
                height: 50,
                color: ColorUtils.deepBlue,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Hesabın yok mu?", style: TextStyle(fontSize: 16, color: ColorUtils.black)),
                TextButton(
                  onPressed: () {
                    // Kayıt olma işlemleri burada yapılacak
                  },
                  child: Text(
                    "Kayıt Ol",
                    style: TextStyle(color: ColorUtils.deepBlue, fontSize: 16),
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorUtils.white,
              ),
              alignment: Alignment.center,
              height: 120,
              width: 300,

              child: ListTile(
                tileColor: Colors.blue[50], // ListTile'ın arka plan rengini değiştirme
                leading: Icon(Icons.lock, color: Colors.blue[800]), // Ikon rengi
                title: Text(
                  "Giriş Yaptığınızda bilgileriniz güvenli şekilde korunur.",
                  style: TextStyle(color: Colors.blue[800]), // Metin rengi
                ),
                onTap: () {
                  // Yardım sayfasına yönlendirme işlemleri burada yapılacak
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
