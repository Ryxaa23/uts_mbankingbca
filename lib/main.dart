import 'package:flutter/material.dart';

const Color bcaBlue = Color(0xFF0066AE);
const Color bcaDarkBlue = Color(0xFF004481);

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'myBCA New Replica',
      home: const MyBcaScreen(),
    );
  }
}

class MyBcaScreen extends StatelessWidget {
  const MyBcaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bcaBlue,
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeaderCard(),
            _buildGebyarBanner(),
            const SizedBox(height: 15),
            
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 25),
                      // Tahap 3: Menu Utama
                      _buildMenuGrid(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ... (Sengaja saya sertakan penuh agar kamu aman copy-paste)
  Widget _buildHeaderCard() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('HALO, SRI HARDIANTI S', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 15),
          Container(
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15), boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 10, offset: Offset(0, 5))]),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)), gradient: LinearGradient(colors: [Color(0xFF42C4E5), Color(0xFF00A2E9)])),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                        decoration: BoxDecoration(color: Colors.white.withOpacity(0.3), borderRadius: BorderRadius.circular(20)),
                        child: Row(mainAxisSize: MainAxisSize.min, children: const [Icon(Icons.info_outline, color: Colors.white, size: 16), SizedBox(width: 5), Text('Lihat BCA ID', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500))]),
                      ),
                      const SizedBox(height: 15),
                      Row(children: const [Text('Rekening: 732 - 540 - 2105', style: TextStyle(color: Colors.white, fontSize: 14)), SizedBox(width: 10), Icon(Icons.copy_outlined, color: Colors.white, size: 16)]),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Saldo Aktif', style: TextStyle(color: Colors.grey, fontSize: 12)),
                      const SizedBox(height: 5),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [Text('IDR 30,915,105.81', style: TextStyle(color: bcaDarkBlue, fontSize: 24, fontWeight: FontWeight.bold)), Icon(Icons.visibility, color: bcaBlue)]),
                      const SizedBox(height: 15),
                      const Divider(color: Colors.grey, thickness: 0.3),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(children: const [Icon(Icons.receipt_long, color: bcaBlue, size: 18), SizedBox(width: 8), Text('Mutasi Rekening', style: TextStyle(color: bcaBlue, fontWeight: FontWeight.w500))]),
                          Row(children: const [Icon(Icons.credit_card, color: bcaBlue, size: 18), SizedBox(width: 8), Text('Rekening Lain', style: TextStyle(color: bcaBlue, fontWeight: FontWeight.w500))]),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGebyarBanner() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [Text('TheNew Gebyar', style: TextStyle(color: Colors.white, fontSize: 12, fontStyle: FontStyle.italic)), Text('Hadiah BCA', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic))]),
          Row(children: const [Text('Menangkan di Sini', style: TextStyle(color: Colors.white, fontSize: 12)), SizedBox(width: 5), Icon(Icons.chevron_right, color: Colors.white, size: 18)])
        ],
      ),
    );
  }

  // --- WIDGET TAHAP 3: Menu Grid ---
  Widget _buildMenuGrid() {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  _buildMenuIcon(Icons.send, 'Transfer', bcaBlue, false),
                  _buildMenuIcon(Icons.receipt, 'Bayar &\nIsi Ulang', bcaBlue, true), // Ada badge NEW
                  _buildMenuIcon(Icons.show_chart, 'Investasi', bcaBlue, false),
                  _buildMenuIcon(Icons.shopping_bag, 'Lifestyle', Colors.teal, false),
                  _buildMenuIcon(Icons.description, 'e-Statement', bcaBlue, false),
                ],
              ),
              const SizedBox(height: 25),
              Row(
                children: [
                  _buildMenuIcon(Icons.credit_card, 'Flazz', bcaDarkBlue, false),
                  _buildMenuIcon(Icons.phone_android, 'Cardless', bcaBlue, false),
                  _buildMenuIcon(Icons.account_balance, 'Produk\nPerbankan', Colors.indigo, false),
                  _buildMenuIcon(Icons.health_and_safety, 'Proteksi', Colors.teal, false),
                  _buildMenuIcon(Icons.grid_view, 'Semua', Colors.grey, false),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        // Indikator scroll (titik biru dan abu)
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 20, height: 6, decoration: BoxDecoration(color: Colors.cyan, borderRadius: BorderRadius.circular(5))),
            const SizedBox(width: 5),
            Container(width: 6, height: 6, decoration: BoxDecoration(color: Colors.grey[300], shape: BoxShape.circle)),
          ],
        ),
      ],
    );
  }

  Widget _buildMenuIcon(IconData icon, String label, Color iconColor, bool isNew) {
    return SizedBox(
      width: 85, // Lebar fixed agar ikon sejajar
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(color: Colors.blue[50], shape: BoxShape.circle),
                child: Icon(icon, color: iconColor, size: 28),
              ),
              if (isNew)
                Positioned(
                  bottom: -5, left: 0, right: 0,
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(10)),
                      child: const Text('NEW', style: TextStyle(color: Colors.white, fontSize: 8, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 10),
          Text(label, textAlign: TextAlign.center, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: bcaDarkBlue, height: 1.2)),
        ],
      ),
    );
  }
}