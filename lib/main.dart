import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherScreen()
    );
  }
}

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images.jpeg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors:[
                  Color(0xCCCCEEFF),
                  Color(0xCC6699CC),
                ],
              ) 
            )
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Ruteng',
                  style: TextStyle(
                   fontSize: 48,
                   fontWeight: FontWeight.bold,
                   color: Colors.white,

                  )
                ),
                const SizedBox(height: 16),
                const Text(
                  'Monday. Oktober 23, 2024',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  )
                ),
                const SizedBox(height: 32),
                const Text(
                  '15°c',
                  style: TextStyle(
                    fontSize: 96,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )
                ),
                const SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                  height: 2,
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return Flex(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        direction: Axis.horizontal,
                        children: List.generate(
                          (constraints.constrainWidth() / 15).floor(),
                          (_) => Container(
                            width: 10,
                            color: Colors.white,
                          )
                        )
                      );
                    },
                  )
                  )
                ),
                const SizedBox(height: 32),
                const Text(
                  'Clody',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )
                ),
                const SizedBox(height: 16),
                const Text(
                  '25°c / 28°c',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  )
                )
              ]

              )
            ),
        ]
      )
    );
  }
}