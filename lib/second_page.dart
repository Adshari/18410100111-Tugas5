import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String kode;
  final String name;
  final String satuan;
  final String hargaBeli;
  final String hargaJual;
  const SecondPage(
      {super.key,
      required this.kode,
      required this.name,
      required this.satuan,
      required this.hargaBeli,
      required this.hargaJual});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Hasil',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.deepPurple),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(kode),
            Text(name),
            Text(satuan),
            Text(hargaBeli),
            Text(hargaJual)
          ],
        ),
      ),
    );
  }
}
