import 'package:flutter/material.dart';

void main() {
  runApp(const MarsFleetAIApp());
}

class MarsFleetAIApp extends StatelessWidget {
  const MarsFleetAIApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mars & Cyber-Fleet AI Matrix',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF05070B),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF00FF66),
          secondary: Color(0xFF00E5FF),
          surface: Color(0xFF0E1420),
        ),
        fontFamily: 'Roboto',
      ),
      home: const ControlRoomScreen(),
    );
  }
}

class ControlRoomScreen extends StatefulWidget {
  const ControlRoomScreen({Key? key}) : super(key: key);

  @override
  State<ControlRoomScreen> createState() => _ControlRoomScreenState();
}

class _ControlRoomScreenState extends State<ControlRoomScreen> {
  String selectedSystem = 'Tesla Cyber-Fleet';
  double neuralSync = 98.4;
  bool isOptimizing = false;

  void runOptimization() {
    setState(() {
      isOptimizing = true;
    });
    Future.delayed(const Duration(seconds: 2500), () {
      setState(() {
        isOptimizing = false;
        neuralSync = 99.9;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0E1420),
        title: Row(
          children: [
            const Icon(Icons.rocket, size: 20, color: Color(0xFF00FF66)),
            const SizedBox(width: 8),
            const Text(
              'MARS MATRIX X',
              style: TextStyle(
                color: Color(0xFF00FF66),
                fontWeight: FontWeight.bold,
                fontSize: 16,
                letterSpacing: 1,
              ),
            ),
            const SizedBox(width: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                color: const Color(0xFF00FF66).withOpacity(0.15),
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: const Color(0xFF00FF66)),
              ),
              child: const Text(
                'XAI-V9',
                style: TextStyle(color: Color(0xFF00FF66), fontSize: 9),
              ),
            ),
          ],
        ),
        actions: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(right: 16),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              decoration: BoxDecoration(
                color: const Color(0xFF161F30),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: const Color(0xFF00FF66).withOpacity(0.3),
                ),
              ),
              child: Row(
                children: [
                  const Icon(Icons.flash_on, size: 14, color: Color(0xFF00FF66)),
                  const SizedBox(width: 4),
                  Text(
                    '$neuralSync%',
                    style: const TextStyle(
                      color: Color(0xFF00FF66),
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: isOptimizing
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircularProgressIndicator(color: Color(0xFF00FF66)),
                  SizedBox(height: 16),
                  Text(
                    'Syncing with Starlink & Neural Network...',
                    style: TextStyle(
                      color: Color(0xFF00FF66),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Recalibrating Mars Rover Terrain Physics...',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            )
          : SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedSystem = 'Tesla Cyber-Fleet';
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: selectedSystem == 'Tesla Cyber-Fleet'
                                  ? const Color(0xFF00FF66)
                                  : const Color(0xFF0E1420),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: const Color(0xFF00FF66)),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              '⚡ TESLA FLEET',
                              style: TextStyle(
                                color: selectedSystem == 'Tesla Cyber-Fleet'
                                    ? Colors.black
                                    : const Color(0xFF00FF66),
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedSystem = 'Mars Rover AI';
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: selectedSystem == 'Mars Rover AI'
                                  ? const Color(0xFF00FF66)
                                  : const Color(0xFF0E1420),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: const Color(0xFF00FF66)),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              '🚀 MARS ROVER',
                              style: TextStyle(
                                color: selectedSystem == 'Mars Rover AI'
                                    ? Colors.black
                                    : const Color(0xFF00FF66),
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: const Color(0xFF0E1420),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: const Color(0xFF00FF66).withOpacity(0.4),
                        width: 1.5,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'ACTIVE TARGET: $selectedSystem',
                              style: const TextStyle(
                                color: Color(0xFF00FF66),
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                            const Icon(Icons.radio, size: 18, color: Color(0xFF00FF66)),
                          ],
                        ),
                        const SizedBox(height: 12),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            selectedSystem == 'Tesla Cyber-Fleet'
                                ? 'https://images.unsplash.com/photo-1563720223185-11003d516935?auto=format&fit=crop&w=800&q=80'
                                : 'https://images.unsplash.com/photo-1614728894747-a83421e2b9c9?auto=format&fit=crop&w=800&q=80',
                            height: 160,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('Aero Drag Coef: 0.21 Cd', style: TextStyle(color: Colors.grey, fontSize: 11)),
                            Text('Neural Link: 12ms Latency', style: TextStyle(color: Colors.grey, fontSize: 11)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Autonomous Matrix Parameters',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: const Color(0xFF0E1420),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: const [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Starlink Real-time Telemetry Sync', style: TextStyle(color: Colors.white70, fontSize: 13)),
                            Icon(Icons.check_circle, size: 18, color: Color(0xFF00FF66)),
                          ],
                        ),
                        Divider(color: Colors.white12, height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('AI Body & Chassis Dynamic Stress Test', style: TextStyle(color: Colors.white70, fontSize: 13)),
                            Icon(Icons.check_circle, size: 18, color: Color(0xFF00FF66)),
                          ],
                        ),
                        Divider(color: Colors.white12, height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Mars Atmospheric Density Simulation', style: TextStyle(color: Colors.white70, fontSize: 13)),
                            Icon(Icons.check_circle, size: 18, color: Color(0xFF00FF66)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF00FF66),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: runOptimization,
                      child: const Text(
                        'EXECUTE NEURAL OPTIMIZATION',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
