import 'package:flutter/material.dart';

void main() {
  runApp(const ModVerseAIApp());
}

class ModVerseAIApp extends StatelessWidget {
  const ModVerseAIApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ModVerse AI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0B0F19),
        primaryColor: const Color(0xFF00F0FF),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF00F0FF),
          secondary: Color(0xFF7000FF),
          surface: Color(0xFF131825),
        ),
        fontFamily: 'Roboto',
      ),
      home: const DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;
  int _credits = 240;
  String _selectedVehicle = 'CAR';
  String _selectedStyle = 'Cyberpunk Neon';
  bool _isGenerating = false;

  final List<Map<String, dynamic>> _styles = [
    {
      'title': 'Cyberpunk Neon',
      'desc': 'Glowing lines, matte obsidian finish, sci-fi splitters.',
      'image': 'https://images.unsplash.com/photo-1503376780353-7e6692767b70?auto=format&fit=crop&w=600&q=80',
    },
    {
      'title': 'Off-Road Beast',
      'desc': 'Rugged 4x4 suspension, heavy armor, massive tires.',
      'image': 'https://images.unsplash.com/photo-1533473359331-0135ef1b58bf?auto=format&fit=crop&w=600&q=80',
    },
    {
      'title': 'Royal Luxury',
      'desc': 'Ultra-deep obsidian black with 24k brushed gold accents.',
      'image': 'https://images.unsplash.com/photo-1617814076367-b759c7d7e738?auto=format&fit=crop&w=600&q=80',
    },
    {
      'title': 'Anime Speedster',
      'desc': 'Vibrant street-racing graffiti & dynamic aero wings.',
      'image': 'https://images.unsplash.com/photo-1552519507-da3b142c6e3d?auto=format&fit=crop&w=600&q=80',
    },
  ];

  void _triggerGeneration() {
    if (_credits < 5) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Not enough credits! Please top up.')),
      );
      return;
    }

    setState(() {
      _isGenerating = true;
    });

    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _isGenerating = false;
        _credits -= 5;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Successfully generated 4 unique variations in "$_selectedStyle"!'),
          backgroundColor: Colors.teal,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF131825),
        elevation: 0,
        title: Row(
          children: [
            const Text(
              'ModVerse AI',
              style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF00F0FF)),
            ),
            const SizedBox(width: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.teal.withOpacity(0.2),
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: Colors.tealAccent),
              ),
              style: const TextStyle(fontSize: 10),
              child: const Text('PRO V2.4', style: TextStyle(color: Colors.tealAccent)),
            ),
          ],
        ),
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: const Color(0xFF1F2937),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.cyan.withOpacity(0.4)),
            ),
            child: Row(
              children: [
                const Icon(Icons.flash_on, size: 16, color: Color(0xFF00F0FF)),
                const SizedBox(width: 4),
                Text('$_credits Cr', style: const TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
      body: _isGenerating
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircularProgressIndicator(color: Color(0xFF00F0FF)),
                  SizedBox(height: 20),
                  Text(
                    'Neural Engine Synthesizing Unique Concept...',
                    style: TextStyle(color: Colors.cyanAccent, fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Text('Applying never-seen-before mods...', style: TextStyle(color: Colors.grey)),
                ],
              ),
            )
          : SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Vehicle Type Toggle (Car / Bike)
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () => setState(() => _selectedVehicle = 'CAR'),
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: _selectedVehicle == 'CAR' ? const Color(0xFF00F0FF) : const Color(0xFF131825),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: const Color(0xFF00F0FF)),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              '🚗 HYPERCAR',
                              style: TextStyle(
                                color: _selectedVehicle == 'CAR' ? Colors.black : Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: GestureDetector(
                          onTap: () => setState(() => _selectedVehicle = 'BIKE'),
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: _selectedVehicle == 'BIKE' ? const Color(0xFF00F0FF) : const Color(0xFF131825),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: const Color(0xFF00F0FF)),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              '🏍️ SUPERBIKE',
                              style: TextStyle(
                                color: _selectedVehicle == 'BIKE' ? Colors.black : Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Upload Section Box
                  Container(
                    width: double.infinity,
                    height: 180,
                    decoration: BoxDecoration(
                      color: const Color(0xFF131825),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.cyan.withOpacity(0.3), width: 1.5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.cloud_upload_outlined, size: 48, color: Color(0xFF00F0FF)),
                        const SizedBox(height: 12),
                        const Text(
                          'Upload Raw Vehicle Photo',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Tap to select from gallery or snap a pic',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                        const SizedBox(height: 14),
                        ElevatedButton.icon(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Image Upload Studio Opened!')),
                            );
                          },
                          icon: const Icon(Icons.camera_alt, size: 16, color: Colors.black),
                          label: const Text('SELECT PHOTO', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF00F0FF),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Styles Hub Title
                  const Text(
                    'Select Modification Style',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  const SizedBox(height: 12),

                  // Styles List Grid
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: _styles.length,
                    itemBuilder: (context, index) {
                      final style = _styles[index];
                      final isSelected = _selectedStyle == style['title'];
                      return GestureDetector(
                        onTap: () => setState(() => _selectedStyle = style['title']),
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 12),
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: const Color(0xFF131825),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: isSelected ? const Color(0xFF00F0FF) : Colors.transparent,
                              width: 2,
                            ),
                          ),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.network(
                                  style['image'],
                                  width: 70,
                                  height: 70,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 14),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      style['title'],
                                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      style['desc'],
                                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              if (isSelected)
                                const Icon(Icons.check_circle, color: Color(0xFF00F0FF))
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 20),

                  // Generate Button (Paid Feature Action)
                  SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: ElevatedButton(
                      onPressed: _triggerGeneration,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF00F0FF),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                      child: const Text(
                        'SYNTHESIZE 4 VARIATIONS (5 CREDITS)',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF131825),
        selectedItemColor: const Color(0xFF00F0FF),
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.auto_awesome), label: 'Studio'),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: 'Gallery'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Garage'),
        ],
      ),
    );
  }
}
