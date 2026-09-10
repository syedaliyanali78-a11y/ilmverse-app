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
        primaryColor: const Color(0xFF00FF66), // SpaceX/Cyber Neon Green
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
  int _selectedIndex = 0;
  bool _isOptimizing = false;
  String _selectedSystem = 'Tesla Cyber-Fleet';
  double _neuralSyncLevel = 98.4;

  void _runNeuralOptimization() {
    setState(() {
      _isOptimizing = true;
    });

    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _isOptimizing = false;
        _neuralSyncLevel = 99.9;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Neural Link Active: Telemetry & Aerodynamics Optimized by 42%!'),
          backgroundColor: Color(0xFF00FF66),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0E1420),
        elevation: 0,
        title: Row(
          children: [
            const Icon(Icons.rocket_launch, color: Color(0xFF00FF66), size: 20),
            const SizedBox(width: 8),
            const Text(
              'MARS MATRIX X',
              style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF00FF66), letterSpacing: 1.2),
            ),
            const SizedBox(width: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                color: const Color(0xFF00FF66).withOpacity(0.15),
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: const Color(0xFF00FF66)),
              ),
              child: const Text('XAI-V9', style: TextStyle(color: Color(0xFF00FF66), fontSize: 10)),
            ),
          ],
        ),
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: const Color(0xFF161F30),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.greenAccent.withOpacity(0.3)),
            ),
            child: Row(
              children: [
                const Icon(Icons.bolt, size: 16, color: Color(0xFF00FF66)),
                const SizedBox(width: 4),
                Text('$_neuralSyncLevel%', style: const TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF00FF66))),
              ],
            ),
          ),
        ],
      ),
      body: _isOptimizing
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircularProgressIndicator(color: Color(0xFF00FF66)),
                  SizedBox(height: 20),
                  Text(
                    'Syncing with Starlink & Neural Network...',
                    style: TextStyle(color: Color(0xFF00FF66), fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text('Recalibrating Mars Rover Terrain Physics...', style: TextStyle(color: Colors.grey)),
                ],
              ),
            )
          : SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // System Selector Tabs
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () => setState(() => _selectedSystem = 'Tesla Cyber-Fleet'),
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: _selectedSystem == 'Tesla Cyber-Fleet' ? const Color(0xFF00FF66) : const Color(0xFF0E1420),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: const Color(0xFF00FF66)),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              '⚡ TESLA FLEET',
                              style: TextStyle(
                                color: _selectedSystem == 'Tesla Cyber-Fleet' ? Colors.black : const Color(0xFF00FF66),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: GestureDetector(
                          onTap: () => setState(() => _selectedSystem = 'Mars Rover AI'),
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: _selectedSystem == 'Mars Rover AI' ? const Color(0xFF00FF66) : const Color(0xFF0E1420),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: const Color(0xFF00FF66)),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              '🚀 MARS ROVER',
                              style: TextStyle(
                                color: _selectedSystem == 'Mars Rover AI' ? Colors.black : const Color(0xFF00FF66),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Live Telemetry Visualizer Box
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFF0E1420),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: const Color(0xFF00FF66).withOpacity(0.4), width: 1.5),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.between,
                          children: [
                            Text(
                              'ACTIVE TARGET: $_selectedSystem',
                              style: const TextStyle(color: Color(0xFF00FF66), fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                            const Icon(Icons.radar, color: Color(0xFF00FF66), size: 20),
                          ],
                        ),
                        const SizedBox(height: 14),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            _selectedSystem == 'Tesla Cyber-Fleet'
                                ? 'https://images.unsplash.com/photo-1563720223185-11003d516935?auto=format&fit=crop&w=800&q=80'
                                : 'https://images.unsplash.com/photo-1614728894747-a83421e2b9c9?auto=format&fit=crop&w=800&q=80',
                            height: 180,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 14),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('Aero Drag Coef: 0.21 Cd', style: TextStyle(color: Colors.grey, fontSize: 12)),
                            Text('Neural Link: 12ms Latency', style: TextStyle(color: Colors.grey, fontSize: 12)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Real-time AI Controls Section
                  const Text(
                    'Autonomous Matrix Parameters',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  const SizedBox(height: 12),

                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: const Color(0xFF0E1420),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.between,
                          children: const [
                            Text('Starlink Real-time Telemetry Sync'),
                            Icon(Icons.check_circle, color: Color(0xFF00FF66), size: 18),
                          ],
                        ),
                        const Divider(color: Colors.white24, height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.between,
                          children: const [
                            Text('AI Body & Chassis Dynamic Stress Test'),
                            Icon(Icons.check_circle, color: Color(0xFF00FF66), size: 18),
                          ],
                        ),
                        const Divider(color: Colors.white24, height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.between,
                          children: const [
                            Text('Mars Atmospheric Density Simulation'),
                            Icon(Icons.check_circle, color: Color(0xFF00FF66), size: 18),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Execute Optimization Button
                  SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: ElevatedButton(
                      onPressed: _runNeuralOptimization,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF00FF66),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                      child: const Text(
                        'EXECUTE NEURAL OPTIMIZATION',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF0E1420),
        selectedItemColor: const Color(0xFF00FF66),
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Control Hub'),
          BottomNavigationBarItem(icon: Icon(Icons.analytics), label: 'Telemetry'),
          BottomNavigationBarItem(icon: Icon(Icons.security), label: 'Security'),
        ],
      ),
    );
  }
}
