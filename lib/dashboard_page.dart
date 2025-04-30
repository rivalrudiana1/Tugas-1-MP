import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  final List<Map<String, String>> dataPenjualan = [
    {
      "faktur": "001",
      "tanggal": "2025-04-30",
      "customer": "Andi",
      "jumlah": "5",
      "total": "500000",
    },
    {
      "faktur": "002",
      "tanggal": "2025-04-29",
      "customer": "Budi",
      "jumlah": "2",
      "total": "200000",
    },
    {
      "faktur": "003",
      "tanggal": "2025-04-28",
      "customer": "Citra",
      "jumlah": "3",
      "total": "300000",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard Penjualan')),
      body: Column(
        children: [
          DataTable(
            columns: const [
              DataColumn(label: Text('No Faktur')),
              DataColumn(label: Text('Tanggal')),
              DataColumn(label: Text('Customer')),
              DataColumn(label: Text('Jumlah')),
              DataColumn(label: Text('Total')),
            ],
            rows:
                dataPenjualan
                    .map(
                      (item) => DataRow(
                        cells: [
                          DataCell(Text(item['faktur']!)),
                          DataCell(Text(item['tanggal']!)),
                          DataCell(Text(item['customer']!)),
                          DataCell(Text(item['jumlah']!)),
                          DataCell(Text(item['total']!)),
                        ],
                      ),
                    )
                    .toList(),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Kembali ke Home'),
          ),
        ],
      ),
    );
  }
}
