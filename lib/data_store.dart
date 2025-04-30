class Penjualan {
  String faktur;
  String tanggal;
  String customer;
  String jumlah;
  String total;

  Penjualan({
    required this.faktur,
    required this.tanggal,
    required this.customer,
    required this.jumlah,
    required this.total,
  });
}

class DataStore {
  static List<Penjualan> penjualanList = [
    Penjualan(
      faktur: '001',
      tanggal: '2025-04-30',
      customer: 'Andi',
      jumlah: '5',
      total: '500000',
    ),
    Penjualan(
      faktur: '002',
      tanggal: '2025-04-29',
      customer: 'Budi',
      jumlah: '2',
      total: '200000',
    ),
    Penjualan(
      faktur: '003',
      tanggal: '2025-04-28',
      customer: 'Citra',
      jumlah: '3',
      total: '300000',
    ),
  ];
}
