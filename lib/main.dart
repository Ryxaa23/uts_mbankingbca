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
            // Tahap 1: Header dan Saldo
            _buildHeaderCard(),
            
            // Tahap 2: Banner Gebyar Hadiah
            _buildGebyarBanner(),
            const SizedBox(height: 15),

            // Tahap 2: Dasar Kotak Putih untuk Menu
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
                ),
                child: const Center(
                  child: Text('Tahap 2: Kotak Putih Siap Diisi Menu', style: TextStyle(color: Colors.grey)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderCard() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('HALO, SRI HARDIANTI S', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 15),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 10, offset: Offset(0, 5))],
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                    gradient: LinearGradient(colors: [Color(0xFF42C4E5), Color(0xFF00A2E9)]),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                        decoration: BoxDecoration(color: Colors.white.withOpacity(0.3), borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(Icons.info_outline, color: Colors.white, size: 16),
                            SizedBox(width: 5),
                            Text('Lihat BCA ID', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: const [
                          Text('Rekening: 732 - 540 - 2105', style: TextStyle(color: Colors.white, fontSize: 14)),
                          SizedBox(width: 10),
                          Icon(Icons.copy_outlined, color: Colors.white, size: 16),
                        ],
                      ),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('IDR 30,915,105.81', style: TextStyle(color: bcaDarkBlue, fontSize: 24, fontWeight: FontWeight.bold)),
                          Icon(Icons.visibility, color: bcaBlue),
                        ],
                      ),
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('TheNew Gebyar', style: TextStyle(color: Colors.white, fontSize: 12, fontStyle: FontStyle.italic)),
              Text('Hadiah BCA', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
            ],
          ),
          Row(
            children: const [
              Text('Menangkan di Sini', style: TextStyle(color: Colors.white, fontSize: 12)),
              SizedBox(width: 5),
              Icon(Icons.chevron_right, color: Colors.white, size: 18),
            ],
          )
        ],
      ),
    );
  }
}