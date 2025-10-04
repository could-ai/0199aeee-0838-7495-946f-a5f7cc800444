import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tren Pertanian Indonesia 2025',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class TrendIssue {
  final String title;
  final String description;
  final IconData icon;

  TrendIssue({required this.title, required this.description, required this.icon});
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<TrendIssue> trendIssues = [
      TrendIssue(
        title: 'Perubahan Iklim dan Cuaca Ekstrem',
        description: 'Pola cuaca yang tidak menentu, kekeringan panjang, dan banjir menjadi tantangan utama yang mempengaruhi jadwal tanam dan hasil panen.',
        icon: Icons.wb_sunny_outlined,
      ),
      TrendIssue(
        title: 'Regenerasi Petani',
        description: 'Minat generasi muda untuk bekerja di sektor pertanian menurun, menyebabkan krisis tenaga kerja dan transfer pengetahuan yang lambat.',
        icon: Icons.people_outline,
      ),
      TrendIssue(
        title: 'Akses Teknologi dan Digitalisasi',
        description: 'Penerapan teknologi modern seperti IoT, drone, dan AI masih terbatas, terutama bagi petani kecil karena biaya dan kurangnya pelatihan.',
        icon: Icons.settings_remote,
      ),
      TrendIssue(
        title: 'Ketersediaan Pupuk dan Pestisida',
        description: 'Fluktuasi harga dan kelangkaan pupuk bersubsidi menjadi masalah klasik yang menghambat optimalisasi produksi.',
        icon: Icons.science_outlined,
      ),
      TrendIssue(
        title: 'Manajemen Pasca-Panen dan Rantai Pasok',
        description: 'Tingkat kehilangan hasil panen (food loss) masih tinggi akibat kurangnya fasilitas penyimpanan dan sistem logistik yang efisien.',
        icon: Icons.local_shipping_outlined,
      ),
      TrendIssue(
        title: 'Ketahanan Pangan dan Kedaulatan',
        description: 'Ketergantungan pada impor beberapa komoditas pangan strategis masih menjadi isu yang mengancam kedaulatan pangan nasional.',
        icon: Icons.shield_outlined,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tren Masalah Pertanian Indonesia 2025'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: trendIssues.length,
        itemBuilder: (context, index) {
          final issue = trendIssues[index];
          return Card(
            elevation: 4,
            margin: const EdgeInsets.only(bottom: 16.0),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(issue.icon, size: 40, color: Theme.of(context).colorScheme.primary),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Text(
                          issue.title,
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    issue.description,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
