import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 4; // Profilim sekmesi aktif

  final List<Widget> _pages = [
    const Placeholder(), // Anasayfa
    const Placeholder(), // Al
    const Placeholder(), // Geçmiş
    const Placeholder(), // Poliçe
    const ProfileScreen(), // Profilim
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Anasayfa'),
          BottomNavigationBarItem(icon: Icon(Icons.thumb_up), label: 'Al'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'Geçmiş'),
          BottomNavigationBarItem(icon: Icon(Icons.assignment), label: 'Poliçe'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profilim'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[800],
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false, title: const Text('Profilim')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            const SizedBox(height: 24),
            _buildInfoCard('Harcama Takibi', 'Bu ay ₺1.250 harcandı'),
            _buildInfoCard('Sigorta Durumu', '%75 kapsama oranı'),
            _buildActionCard('Al Tavsiyen', '1 yeni öneri var'),
            _buildInfoCard('Geçmiş işlemler', '22 işlem görüntülendi'),
            _buildInfoCard('Poliçe Bilgisi', 'AXA Tamamlayıcı aktif'),
            _buildActionCard('Talep Oluştur', 'Yeni başvuru başlat'),
            _buildActionCard('Hastane Ara', '3 öneri hazır'),
            _buildInfoCard('Raporlarım', '5 PDF indirildi'),
            const SizedBox(height: 20),
            _buildNotifications(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Merhaba, Furkan!',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),
        ),
        Text('10 Mayıs 2024', style: TextStyle(fontSize: 14, color: Colors.grey[600])),
      ],
    );
  }

  Widget _buildInfoCard(String title, String value) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontSize: 14, color: Colors.grey[700])),
            const SizedBox(height: 8),
            Text(value, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          ],
        ),
      ),
    );
  }

  Widget _buildActionCard(String title, String subtitle) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 1,
      color: Colors.blue[50],
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue[800]),
            ),
            const SizedBox(height: 4),
            Text(subtitle, style: TextStyle(fontSize: 14, color: Colors.blue[600])),
          ],
        ),
      ),
    );
  }

  Widget _buildNotifications() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: Colors.orange[50], borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          Icon(Icons.warning_amber, color: Colors.orange[800]),
          const SizedBox(width: 12),
          Text(
            '2 kritik uyarı / ayarları',
            style: TextStyle(color: Colors.orange[800], fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
