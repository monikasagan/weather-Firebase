import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather app'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '15',
              style: TextStyle(fontSize: 80),
            ),
            const Text(
              'Warsaw',
              style: TextStyle(fontSize: 40),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    filled: true,
                    hintText: "Warsaw"),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
              style: const ButtonStyle(),
              onPressed: () {},
              child: const Text('get weather'),
            )
          ],
        ),
      ),
    );
  }
}
