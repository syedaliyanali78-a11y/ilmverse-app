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

