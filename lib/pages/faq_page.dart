import 'package:flutter/material.dart';

class FaqPage extends StatelessWidget {
  const FaqPage({super.key});

  @override
  Widget build(BuildContext context) {
    final faqs = <FaqEntry>[
      FaqEntry("What is fluoride?", "Fluoride is a mineral that helps prevent tooth decay."),
      FaqEntry("Why is it in water?", "Community water fluoridation helps strengthen teeth and reduce cavities."),
      FaqEntry("Is it safe?", "Yes. Decades of research confirm fluoride in water is safe and effective."),
      FaqEntry("Who benefits?", "Everyone in the community benefits, regardless of age or income."),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("FAQ"),
      ),
      body: ListView(
        children: [
          ...faqs.map((e) => _Faq(q: e.q, a: e.a)),
        ],
      ),
    );
  }
}

class FaqEntry {
  final String q;
  final String a;
  FaqEntry(this.q, this.a);
}

class _Faq extends StatelessWidget {
  final String q;
  final String a;

  const _Faq({required this.q, required this.a});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(q),
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(a),
        ),
      ],
    );
  }
}
