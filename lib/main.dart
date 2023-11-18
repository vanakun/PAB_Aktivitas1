import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
              backgroundColor: Color.fromARGB(171, 118, 118, 117),
              title: Align(
                  alignment: Alignment.centerLeft,
                    child: Text(
                        'My Apps',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                ),
              ),
            ), 
          ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20), // Add space of 20 units between AppBar and "Welcome to"
              Center(
                child: Text(
                  'Welcome to',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Praktikum PAB 2023',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                  ),
                ),
              ),
              const SizedBox(height: 10), // Add space of 10 units between "Praktikum PAB 2023" and "1462100153"
              Center(
                child: Text(
                  '1462100153',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10.0),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        width: 300,
                        height: 500,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            'assets/example.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20, // Add space of 20 units
                      ),
                      Center(
                        child: Text(
                          'Dava Nabila Muzaky',
                          style: TextStyle(
                            fontFamily: 'Monaco',
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: () {
                          print('Tombol ditekan');
                        },
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                            const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                          ),
                        ),
                        child: const Text('TEKAN DISINI'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}