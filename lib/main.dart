import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Programa Layout'),
          backgroundColor: Colors.purple.shade200,
          centerTitle: true,
        ),
        body: Column(
          children: [
            // Layout Superior
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.amber,
                alignment: Alignment.center,
                child: const Text(
                  'Layout Superior',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            // Três colunas (Primeira, Segunda e Terceira)
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Primeira Coluna
                  Expanded(
                    child: Container(
                      color: Colors.red,
                      alignment: Alignment.center,
                      child: const Text(
                        'Primeira Coluna',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  // Segunda Coluna
                  Expanded(
                    child: Container(
                      color: Colors.redAccent,
                      alignment: Alignment.center,
                      child: const Text(
                        'Segunda Coluna',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  // Terceira Coluna
                  Expanded(
                    child: Container(
                      color: Colors.red,
                      alignment: Alignment.center,
                      child: const Text(
                        'Terceira Coluna',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Layout Inferior
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.blue,
                alignment: Alignment.center,
                child: const Text(
                  'Layout Inferior',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
