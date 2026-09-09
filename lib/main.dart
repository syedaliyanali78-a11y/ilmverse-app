import 'package:flutter/material.dart';

void main() {
  runApp(const IlmVerseApp());
}

class IlmVerseApp extends StatelessWidget {
  const IlmVerseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IlmVerse',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'IlmVerse - الـم و حکمت',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.teal.shade700,
        centerTitle: true,
        elevation: 6,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal.shade50, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            children: [
              DashboardCard(
                title: 'AI اسلامی کارٹون',
                subtitle: 'دیکھیں اور سیکھیں',
                icon: Icons.smart_toy,
                color: Colors.pink.shade600,
                onTap: () {
                  _showToast(context, 'AI کارٹون سیکشن جلد لانچ ہوگا!');
                },
              ),
              DashboardCard(
                title: 'بچوں کی دعائیں',
                subtitle: 'آڈیو اور ترجمہ',
                icon: Icons.child_care,
                color: Colors.orange.shade800,
                onTap: () {
                  _showToast(context, 'بچوں کی دعاؤں کا سیکشن آرہا ہے!');
                },
              ),
              DashboardCard(
                title: 'AI کوئز ماسٹر',
                subtitle: 'سوال کرو اور شاباشی لو!',
                icon: Icons.psychology,
                color: Colors.blue.shade700,
                onTap: () {
                  _showToast(context, 'AI کوئز اور شاباشی فیچر جلد آرہا ہے!');
                },
              ),
              DashboardCard(
                title: 'اسلامی معلومات',
                subtitle: 'قرآن، احادیث اور تاریخ',
                icon: Icons.menu_book,
                color: Colors.green.shade700,
                onTap: () {
                  _showToast(context, 'اسلامی معلومات کا سیکشن جلد آرہا ہے!');
                },
              ),
              DashboardCard(
                title: 'بچوں کی گیمز',
                subtitle: 'مظہرِ علم و تفریح',
                icon: Icons.sports_esports,
                color: Colors.purple.shade700,
                onTap: () {
                  _showToast(context, 'اسلامی گیمز سیکشن آرہا ہے!');
                },
              ),
              DashboardCard(
                title: 'دنیا کا علم',
                subtitle: 'جنرل نالج اور حقائق',
                icon: Icons.public,
                color: Colors.indigo.shade600,
                onTap: () {
                  _showToast(context, 'دنیا کا علم سیکشن آرہا ہے!');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showToast(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),
        backgroundColor: Colors.teal.shade800,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const DashboardCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.12),
              spreadRadius: 3,
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
          border: Border.all(color: color.withOpacity(0.2), width: 1.5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 26,
                backgroundColor: color.withOpacity(0.1),
                child: Icon(icon, size: 28, color: color),
              ),
              const SizedBox(height: 10),
              Text(
                title,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade800,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 2),
              Text(
                subtitle,
                style: TextStyle(fontSize: 10, color: Colors.grey.shade500),
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(const IlmVerseApp());
}

class IlmVerseApp extends StatelessWidget {
  const IlmVerseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IlmVerse',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

// ==================== HomeScreen (پرو ڈیش بورڈ) ====================
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'IlmVerse - الـم و حکمت',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.teal.shade700,
        centerTitle: true,
        elevation: 6,
        actions: [
          IconButton(
            icon: const Icon(Icons.person_pin, color: Colors.white, size: 28),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfileScreen()),
              );
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal.shade50, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            children: [
              DashboardCard(
                title: 'AI اسلامی کارٹون',
                subtitle: 'دیکھیں اور سیکھیں',
                icon: Icons.smart_toy,
                color: Colors.pink.shade600,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AiCartoonsScreen()),
                  );
                },
              ),
              DashboardCard(
                title: 'بچوں کی دعائیں',
                subtitle: 'آڈیو اور ترجمہ',
                icon: Icons.child_care,
                color: Colors.orange.shade800,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const KidsDuasScreen()),
                  );
                },
              ),
              DashboardCard(
                title: 'کوئز ماسٹر AI',
                subtitle: 'سوال کرو اور شاباشی لو!',
                icon: Icons.psychology,
                color: Colors.blue.shade700,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AiQuizScreen()),
                  );
                },
              ),
              DashboardCard(
                title: 'اسلامی معلومات',
                subtitle: 'قرآن، احادیث اور تاریخ',
                icon: Icons.menu_book,
                color: Colors.green.shade700,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const IslamicInfoScreen()),
                  );
                },
              ),
              DashboardCard(
                title: 'بچوں کی گیمز',
                subtitle: 'مظہرِ علم و تفریح',
                icon: Icons.sports_esports,
                color: Colors.purple.shade700,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const KidsGamesScreen()),
                  );
                },
              ),
              DashboardCard(
                title: 'دنیا کا علم',
                subtitle: 'جنرل نالج اور حقائق',
                icon: Icons.public,
                color: Colors.indigo.shade600,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const WorldKnowledgeScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const DashboardCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.12),
              spreadRadius: 3,
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
          border: Border.all(color: color.withOpacity(0.2), width: 1.5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 26,
                backgroundColor: color.withOpacity(0.1),
                child: Icon(icon, size: 28, color: color),
              ),
              const SizedBox(height: 10),
              Text(
                title,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade800,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 2),
              Text(
                subtitle,
                style: TextStyle(fontSize: 10, color: Colors.grey.shade500),
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ==================== Profile & About Screen (پروفایل اور تھیم سیکشن) ====================
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('👤 پروفایل اور ایپ کی معلومات', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.teal.shade700,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 45,
              backgroundColor: Colors.teal,
              child: Icon(Icons.school, size: 50, color: Colors.white),
            ),
            const SizedBox(height: 15),
            const Text(
              'IlmVerse (الـم و حکمت)',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.teal),
            ),
            const SizedBox(height: 5),
            const Text(
              'بچوں اور بڑوں کے لیے دنیا کی بہترین اسلامی اور تعلیمی ایپ',
              style: TextStyle(fontSize: 12, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: const [
                    ListTile(
                      leading: Icon(Icons.developer_mode, color: Colors.teal),
                    title: Text('ڈیویلپر', style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text('Syed Aliyan & Team'),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.verified, color: Colors.blue),
                      title: Text('ورژن', style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text('1.0.0 Pro Edition'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ==================== 1. AI Quiz Master Screen ====================
class AiQuizScreen extends StatefulWidget {
  const AiQuizScreen({super.key});

  @override
  State<AiQuizScreen> createState() => _AiQuizScreenState();
}

class _AiQuizScreenState extends State<AiQuizScreen> {
  int currentQuestionIndex = 0;
  int score = 0;
  bool answered = false;
  String feedbackMessage = '';
  bool isCorrect = false;
  int? selectedIndexTracker;

  final List<Map<String, dynamic>> quizData = [
    {
      'question': 'پیارے نبی حضرت محمد ﷺ کے والد محترم کا نام کیا تھا؟',
      'options': ['حضرت عبداللہ ؓ', 'حضرت ابو طالب ؓ', 'حضرت عبدالمطلب ؓ', 'حضرت عمر ؓ'],
      'correctAnswer': 0,
    },
    {
      'question': 'قرآن پاک میں کل کتنے پارے ہیں؟',
      'options': ['30 پارے', '40 پارے', '25 پارے', '114 پارے'],
      'correctAnswer': 0,
    },
    {
      'question': 'پہلی الہامی کتاب کون سی نازل ہوئی تھی؟',
      'options': ['تورات', 'انجیل', 'قرآن مجید', 'زبور'],
      'correctAnswer': 2,
    },
  ];

  void checkAnswer(int selectedIndex) {
    if (answered) return;

    setState(() {
      answered = true;
      selectedIndexTracker = selectedIndex;
      int correct = quizData[currentQuestionIndex]['correctAnswer'];
      if (selectedIndex == correct) {
        isCorrect = true;
        score += 10;
        feedbackMessage = 'ماشآءالله! میرے ہیرو نے بالکل درست جواب دیا! 🌟 (+10 پوائنٹس)';
      } else {
        isCorrect = false;
        feedbackMessage = 'کوئی بات نہیں پیارے بچے! اگلی بار کوشش کرنا۔ صحیح جواب سبز رنگ میں ہے۔';
      }
    });
  }

  void nextQuestion() {
    setState(() {
      answered = false;
      selectedIndexTracker = null;
      feedbackMessage = '';
      if (currentQuestionIndex < quizData.length - 1) {
        currentQuestionIndex++;
      } else {
        currentQuestionIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQ = quizData[currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        title: const Text('🤖 AI کوئز ماسٹر', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blue.shade700,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('سوال ${currentQuestionIndex + 1} / ${quizData.length}', style: const TextStyle(fontWeight: FontWeight.bold)),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(color: Colors.amber.shade100, borderRadius: BorderRadius.circular(20)),
                  child: Text('⭐ سکور: $score', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.amber.shade900)),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.blue.shade200),
              ),
              child: Text(
                currentQ['question'],
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            ...List.generate(currentQ['options'].length, (index) {
              Color btnColor = Colors.white;
              Color textColor = Colors.black87;
              if (answered) {
                if (index == currentQ['correctAnswer']) {
                  btnColor = Colors.green.shade100;
                  textColor = Colors.green.shade800;
                } else if (index == selectedIndexTracker) {
                  btnColor = Colors.red.shade100;
                  textColor = Colors.red.shade800;
                }
              }

              return Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: btnColor,
                    foregroundColor: textColor,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  onPressed: () => checkAnswer(index),
                  child: Text(currentQ['options'][index], style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                ),
              );
            }),
            if (answered) ...[
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: isCorrect ? Colors.green.shade50 : Colors.orange.shade50,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  feedbackMessage,
                  style: TextStyle(fontWeight: FontWeight.bold, color: isCorrect ? Colors.green.shade800 : Colors.orange.shade900),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue.shade700, foregroundColor: Colors.white),
                onPressed: nextQuestion,
                child: const Text('اگلا سوال ➡️'),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

// ==================== 2. Kids Duas Screen ====================
class KidsDuasScreen extends StatelessWidget {
  const KidsDuasScreen({super.key});

  final List<Map<String, String>> duas = const [
    {'title': 'سونے کی دعا', 'arabic': 'اَللّٰهُمَّ بِاسْمِكَ أَمُوتُ وَأَحْيَا', 'translation': 'اے اللہ! میں تیری ہی نام کے ساتھ مرتا ہوں اور جیتا ہوں۔'},
    {'title': 'کھانے سے پہلے کی دعا', 'arabic': 'بِسْمِ اللَّهِ وَعَلَى بَرَكَةِ اللَّهِ', 'translation': 'اللہ کے نام سے اور اللہ کی برکت کے ساتھ۔'},
    {'title': 'گھر سے نکلنے کی دعا', 'arabic': 'بِسْمِ اللَّهِ، تَوَكَّلْتُ عَلَى اللَّهِ', 'translation': 'اللہ کے نام پر، میں نے اللہ پر بھروسہ کیا۔'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('🤲 بچوں کی دعائیں', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)), backgroundColor: Colors.orange.shade800),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: duas.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(duas[index]['title']!, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.orange.shade900)),
                  const SizedBox(height: 10),
                  Text(duas[index]['arabic']!, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87), textAlign: TextAlign.right),
                  const SizedBox(height: 8),
                  Text(duas[index]['translation']!, style: TextStyle(fontSize: 14, color: Colors.grey.shade700)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// ==================== 3. AI Cartoons Screen ====================
class AiCartoonsScreen extends StatelessWidget {
  const AiCartoonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('🤖 AI اسلامی کارٹون', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)), backgroundColor: Colors.pink.shade600),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.smart_toy, size: 80, color: Colors.pink.shade600),
              const SizedBox(height: 20),
              const Text('بچوں کے لیے AI اسلامی کارٹون اور کہانیاں جلد آ رہی ہیں!', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}

// ==================== 4. Islamic Info Screen ====================
class IslamicInfoScreen extends StatelessWidget {
  const IslamicInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('📖 اسلامی معلومات', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)), backgroundColor: Colors.green.shade700),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ListTile(
            leading: Icon(Icons.menu_book, color: Colors.green),
            title: Text('قرآن مجید کا تعارف', style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('قرآن مجید اللہ کی آخری کتاب ہے جو حضرت محمد ﷺ پر نازل ہوئی۔'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.star, color: Colors.green),
            title: Text('ارکانِ اسلام', style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('کلمہ طیبہ، نماز، روزہ، زکوٰۃ اور حج۔'),
          ),
        ],
      ),
    );
  }
}

// ==================== 5. Kids Games Screen ====================
class KidsGamesScreen extends StatelessWidget {
  const KidsGamesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('🎮 بچوں کی گیمز', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)), backgroundColor: Colors.purple.shade700),
      body: const Center(
        child: Text('مظہرِ علم و تفریح اسلامی گیمز جلد شامل ہوں گی!', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ),
    );
  }
}

// ==================== 6. World Knowledge Screen ====================
class WorldKnowledgeScreen extends StatelessWidget {
  const WorldKnowledgeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('🌍 دنیا کا علم', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)), backgroundColor: Colors.indigo.shade600),
      body: const Center(
        child: Text('جنرل نالج، سائنسی اور دنیا بھر کے حقائق جلد آرہے ہیں!', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ),
    );
  }
}

