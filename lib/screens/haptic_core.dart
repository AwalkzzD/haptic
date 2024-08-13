import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:haptic/screens/haptic_vibration.dart';
import 'package:haptic/utils/widgets/custom_button.dart';

class HapticCore extends StatefulWidget {
  const HapticCore({super.key});

  @override
  State<HapticCore> createState() => _HapticCoreState();
}

class _HapticCoreState extends State<HapticCore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Built-in'), centerTitle: true),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 30),
              const Text('Haptic Feedback using core in-built classes'),
              const SizedBox(height: 30),
              CustomButton(
                  onPressed: () => HapticFeedback.lightImpact(),
                  btnText: 'lightImpact'),
              CustomButton(
                  onPressed: () => HapticFeedback.mediumImpact(),
                  btnText: 'mediumImpact'),
              CustomButton(
                  onPressed: () => HapticFeedback.heavyImpact(),
                  btnText: 'heavyImpact'),
              CustomButton(
                  onPressed: () => HapticFeedback.selectionClick(),
                  btnText: 'selectionClick'),
              CustomButton(
                  onPressed: () async => await HapticFeedback.vibrate(),
                  btnText: 'vibrate'),
              const Expanded(child: SizedBox()),
              CustomButton(
                  color: Colors.black54,
                  onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HapticVibration()))
                      },
                  btnText: 'Next Screen'),
            ],
          ),
        ),
      ),
    );
  }
}
