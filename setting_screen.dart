import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2, // Jumlah kolom dalam grid
          crossAxisSpacing: 16.0, // Spasi horizontal
          mainAxisSpacing: 16.0, // Spasi vertikal
          children: [
            _buildSettingItem(Icons.notifications, 'Notifications', () {
              // Aksi untuk Notifikasi
            }),
            _buildSettingItem(Icons.lock, 'Privacy', () {
              // Aksi untuk Privasi
            }),
            _buildSettingItem(Icons.language, 'Language', () {
              // Aksi untuk Bahasa
            }),
            _buildSettingItem(Icons.update, 'Updates', () {
              // Aksi untuk Pembaruan
            }),
          ],
        ),
      ),
    );
  }

  // Widget item pengaturan
  Widget _buildSettingItem(IconData icon, String label, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.blue),
            const SizedBox(height: 8),
            Text(
              label,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
