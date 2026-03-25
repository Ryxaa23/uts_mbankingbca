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
      backgroundColor: bcaBlue, // Background utama biru
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Memanggil fungsi pembuatan Kartu Header & Saldo
              _buildHeaderCard(),
              
              // Nanti banner dan menu putih akan ditambahkan di sini
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderCard() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Teks Sapaan
          const Text(
            'HALO, SRI HARDIANTI S', 
            style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)
          ),
          const SizedBox(height: 20),
          
          // Kartu Saldo Utama
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 10, offset: Offset(0, 5))],
            ),
            child: Column(
              children: [
                // --- Bagian Atas Kartu (Gradasi Cyan) ---
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                    gradient: LinearGradient(
                      colors: [Color(0xFF42C4E5), Color(0xFF00A2E9)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Tombol Lihat BCA ID
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.3), 
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(Icons.info_outline, color: Colors.white, size: 16),
                            SizedBox(width: 5),
                            Text('Lihat BCA ID', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Teks Rekening & Ikon Copy
                      Row(
                        children: const [
                          Text('Rekening: 732 - 540 - 2105', style: TextStyle(color: Colors.white, fontSize: 14)),
                          SizedBox(width: 10),
                          Icon(Icons.copy, color: Colors.white, size: 18),
                        ],
                      ),
                    ],
                  ),
                ),
                
                // --- Bagian Bawah Kartu (Putih) ---
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
                      // Tombol Mutasi & Rekening Lain
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(children: const [
                            Icon(Icons.receipt_long, color: bcaBlue, size: 20), 
                            SizedBox(width: 8), 
                            Text('Mutasi Rekening', style: TextStyle(color: bcaBlue, fontWeight: FontWeight.w500))
                          ]),
                          Row(children: const [
                            Icon(Icons.credit_card, color: bcaBlue, size: 20), 
                            SizedBox(width: 8), 
                            Text('Rekening Lain', style: TextStyle(color: bcaBlue, fontWeight: FontWeight.w500))
                          ]),
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
}