import 'package:flutter/material.dart';
import 'package:pertama/second_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    var kode = '';
    var nama = '';
    var satuan = '';
    var hargaBeli = '';
    var hargaJual = '';

    const space = SizedBox(
      height: 10,
    );

    Widget textFieldWidget(String hint, Function(String) valueOnChange) {
      return TextField(
        onChanged: valueOnChange,
        decoration: InputDecoration(
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(18))),
            hintText: hint),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'First Page',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            space,
            textFieldWidget('Kode', (value) => kode = value),
            space,
            textFieldWidget('Nama', (value) => nama = value),
            space,
            textFieldWidget('Satuan', (value) => satuan = value),
            space,
            textFieldWidget('Harga beli', (value) => hargaBeli = value),
            space,
            textFieldWidget('Harga jual', (value) => hargaJual = value),
            space,
            SizedBox(
                width: double.infinity,
                child: FilledButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondPage(
                                    kode: kode,
                                    name: nama,
                                    satuan: satuan,
                                    hargaBeli: hargaBeli,
                                    hargaJual: hargaJual,
                                  )));
                    },
                    child: const Text('Hasil')))
          ],
        ),
      ),
    );
  }
}
