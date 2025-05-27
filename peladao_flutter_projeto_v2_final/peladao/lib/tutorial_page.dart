import 'package:flutter/material.dart';

class TutorialPage extends StatefulWidget {
  @override
  _TutorialPageState createState() => _TutorialPageState();
}

class _TutorialPageState extends State<TutorialPage> {
  int currentStep = 0;

  final List<String> steps = [
    '1. Crie sua conta.',
    '2. Entre em uma liga ou crie a sua.',
    '3. Escale seu time com Perebas.',
    '4. Acompanhe os scouts e rankings.',
    '5. Seja o campeão do Peladão!'
  ];

  void nextStep() {
    if (currentStep < steps.length - 1) {
      setState(() {
        currentStep++;
      });
    } else {
      _endTutorial();
    }
  }

  void _endTutorial() {
    Navigator.of(context).pop();
  }

  void skipTutorial() {
    _endTutorial();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tutorial Peladão'),
        actions: [
          TextButton(
            onPressed: skipTutorial,
            child: Text(
              'Pular',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              steps[currentStep],
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: nextStep,
              child: Text(currentStep == steps.length - 1 ? 'Finalizar' : 'Próximo'),
            ),
          ],
        ),
      ),
    );
  }
}
