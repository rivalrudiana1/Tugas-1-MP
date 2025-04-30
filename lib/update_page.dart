import 'package:flutter/material.dart';
import 'data_store.dart';

class UpdatePage extends StatelessWidget {
  final TextEditingController fakturController = TextEditingController();
  final TextEditingController customerController = TextEditingController();
  final TextEditingController jumlahController = TextEditingController();
  final TextEditingController totalController = TextEditingController();
  final TextEditingController tanggalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Penjualan'),
        leading: Icon(Icons.update),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            TextField(
              controller: fakturController,
              decoration: InputDecoration(labelText: 'No Faktur'),
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
                final fakturToUpdate = fakturController.text;
                for (var penjualan in DataStore.penjualanList) {
                  if (penjualan.faktur == fakturToUpdate) {
                    penjualan.tanggal = tanggalController.text;
                    penjualan.customer = customerController.text;
                    penjualan.jumlah = jumlahController.text;
                    penjualan.total = totalController.text;
                    break;
                  }
                }
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Data berhasil diupdate')),
                );
              },
              child: Text('Update'),
            ),
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
