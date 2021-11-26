import 'package:flutter/material.dart';

class NewSpendingScreen extends StatelessWidget {
  const NewSpendingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Tambah Pengeluaran"),
      ),
    );
  }
}
