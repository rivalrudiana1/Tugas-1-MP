import 'package:flutter/material.dart';
import 'data_store.dart';

class AddPage extends StatelessWidget {
  final TextEditingController fakturController = TextEditingController();
  final TextEditingController tanggalController = TextEditingController();
  final TextEditingController customerController = TextEditingController();
  final TextEditingController jumlahController = TextEditingController();
  final TextEditingController totalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tambah Penjualan'), leading: Icon(Icons.add)),
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
                DataStore.penjualanList.add(
                  Penjualan(
                    faktur: fakturController.text,
                    tanggal: tanggalController.text,
                    customer: customerController.text,
                    jumlah: jumlahController.text,
                    total: totalController.text,
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Data berhasil ditambahkan')),
                );
              },
              child: Text('Submit'),
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
