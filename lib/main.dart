import 'package:rupai/card_one_widgets.dart';
import 'package:rupai/card_three_widget.dart';
import 'package:rupai/card_two_widget.dart';
import 'package:rupai/stack_cards.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0f151a),
      appBar: AppBar(
        backgroundColor: Color(0xFF0f151a),
        elevation: 0,
        title: const Text(''),
        leading: Container(
          width: 32,
          height: 32,
          margin: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Color(0xFF1b2125),
          ),
          child: const Icon(
            Icons.close,
            color: Color(0xFF7f9fa8),
          ),
        ),
        actions: [
          Container(
            width: 32,
            height: 32,
            margin: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color(0xFF1b2125),
            ),
            child: const Icon(
              Icons.question_mark_rounded,
              color: Color(0xFF7f9fa8),
            ),
          ),
        ],
      ),
      body: StackCardsWidget(
        key: const Key('stack_cards'),
        activeItemIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        onHeaderTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        nextButtonTexts: const ["Proceed to EMI Selection", "Select your bank account", "Tap for 1 Click KYC"],
        collapsedWidgets: const [
          Header1Widget(),
          Header2Widget(),
          Header3Widget(),
        ],
        expandedWidgets: const [
          Card1Widget(),
          Card2Widget(),
          Card3Widget(),
        ],
      ),
    );
  }
}
