import 'package:flutter/material.dart';

class UpdatePage extends StatelessWidget {
  final TextEditingController fakturController = TextEditingController(
    text: "001",
  );
  final TextEditingController tanggalController = TextEditingController(
    text: "2025-04-30",
  );
  final TextEditingController customerController = TextEditingController(
    text: "Andi",
  );
  final TextEditingController jumlahController = TextEditingController(
    text: "5",
  );
  final TextEditingController totalController = TextEditingController(
    text: "500000",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Update Penjualan')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            TextField(
              controller: fakturController,
              decoration: InputDecoration(labelText: 'No Faktur Penjualan'),
            ),
            TextField(
              controller: tanggalController,
              decoration: InputDecoration(labelText: 'Tanggal Penjualan'),
            ),
            TextField(
              controller: customerController,
              decoration: InputDecoration(labelText: 'Nama Customer'),
            ),
            TextField(
              controller: jumlahController,
              decoration: InputDecoration(labelText: 'Jumlah Barang'),
            ),
            TextField(
              controller: totalController,
              decoration: InputDecoration(labelText: 'Total Penjualan'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Data belum disimpan, hanya contoh tampilan
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Data berhasil diperbarui (simulasi)'),
                  ),
                );
              },
              child: Text('Update'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Kembali ke Home'),
            ),
          ],
        ),
      ),
    );
  }
}
