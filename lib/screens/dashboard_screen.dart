import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  static const String route = '/dashboard';

  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F4F9),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'JustduIt Dashboard',
          style: TextStyle(
            color: Color(0xFF1E88FF),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined,
                color: Color(0xFF1E88FF)),
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // --- Sapaan ---
            const Text(
              "Selamat Datang 👋",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const Text(
              "Cahya Nayla",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // --- Kartu Statistik ---
            Row(
              children: [
                Expanded(
                  child: _buildStatCard(
                    color: Colors.blue,
                    icon: Icons.account_balance_wallet,
                    title: "Saldo",
                    value: "Rp 2.349.500",
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _buildStatCard(
                    color: Colors.green,
                    icon: Icons.arrow_downward,
                    title: "Pemasukan",
                    value: "Rp 5.200.000",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: _buildStatCard(
                    color: Colors.red,
                    icon: Icons.arrow_upward,
                    title: "Pengeluaran",
                    value: "Rp 1.450.000",
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _buildStatCard(
                    color: Colors.orange,
                    icon: Icons.shopping_cart,
                    title: "Belanja",
                    value: "12x",
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // --- Menu Cepat ---
            const Text(
              "Akses Cepat",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildQuickButton(Icons.send, "Transfer", Colors.blue),
                _buildQuickButton(Icons.add_card, "Top Up", Colors.green),
                _buildQuickButton(Icons.qr_code, "QR Pay", Colors.orange),
                _buildQuickButton(Icons.settings, "Pengaturan", Colors.grey),
              ],
            ),

            const SizedBox(height: 30),

            // --- Timeline Transaksi ---
            const Text(
              "Timeline Transaksi",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            _buildTimelineTile(
              icon: Icons.arrow_upward,
              color: Colors.red,
              title: "Transfer ke Adit",
              subtitle: "27 Sep 2025",
              amount: "- Rp 100.000",
            ),
            _buildTimelineTile(
              icon: Icons.arrow_downward,
              color: Colors.green,
              title: "Top Up Dana",
              subtitle: "26 Sep 2025",
              amount: "+ Rp 200.000",
            ),
            _buildTimelineTile(
              icon: Icons.shopping_bag,
              color: Colors.blue,
              title: "Belanja Tokopedia",
              subtitle: "25 Sep 2025",
              amount: "- Rp 350.000",
            ),
          ],
        ),
      ),
    );
  }

  // --- Card Statistik ---
  static Widget _buildStatCard({
    required Color color,
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.9),
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.white, size: 28),
          const SizedBox(height: 12),
          Text(
            title,
            style: const TextStyle(color: Colors.white70, fontSize: 14),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  // --- Tombol Cepat ---
  static Widget _buildQuickButton(IconData icon, String label, Color color) {
    return Column(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: color.withOpacity(0.15),
          child: Icon(icon, color: color, size: 28),
        ),
        const SizedBox(height: 6),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }

  // --- Timeline Transaksi ---
  static Widget _buildTimelineTile({
    required IconData icon,
    required Color color,
    required String title,
    required String subtitle,
    required String amount,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: color.withOpacity(0.1),
            child: Icon(icon, color: color),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 14)),
                Text(subtitle, style: const TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          Text(
            amount,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: color,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
