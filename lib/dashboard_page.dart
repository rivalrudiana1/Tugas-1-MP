import 'package:flutter/material.dart';
import 'data_store.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard Penjualan'),
        leading: Icon(Icons.dashboard),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: DataStore.penjualanList.length,
              itemBuilder: (context, index) {
                final penjualan = DataStore.penjualanList[index];
                return ListTile(
                  title: Text('${penjualan.faktur} - ${penjualan.customer}'),
                  subtitle: Text(
                    'Tanggal: ${penjualan.tanggal}\nJumlah: ${penjualan.jumlah} | Total: ${penjualan.total}',
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      setState(() {
                        DataStore.penjualanList.removeAt(index);
                      });
                    },
                  ),
                );
              },
            ),
          ),
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
