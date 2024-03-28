import 'package:flutter/material.dart';

class SecondPPage extends StatelessWidget {
  final String? data;
  const SecondPPage({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data2 = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              data ?? "",
              style: const TextStyle(fontSize: 20),
            ),
            if (data2 != null)
              Text(
                data2.toString(),
                style: TextStyle(fontSize: 20),
              ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Kembali"),
            ),
          ],
        ),
      ),
    );
  }
}
