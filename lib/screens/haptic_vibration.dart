import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';

import '../utils/widgets/custom_button.dart';

class HapticVibration extends StatefulWidget {
  const HapticVibration({super.key});

  @override
  State<HapticVibration> createState() => _HapticVibrationState();
}

class _HapticVibrationState extends State<HapticVibration> {
  @override
  void initState() {
    /*Vibration.hasVibrator().then((canVibrate) {
      if (canVibrate != null) {
        if (canVibrate == true) {
          log('Device can vibrate');
        } else {
          log('Device cannot vibrate');
        }
      } else {
        log('Device vibrate state not identified');
      }
    });*/
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dependency'), centerTitle: true),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 30),
              const Text('Haptic Feedback using vibration: ^1.9.0 package'),
              const SizedBox(height: 30),
              CustomButton(
                  btnText: 'vibrate 1ms',
                  onPressed: () => Vibration.vibrate(duration: 1)),
              CustomButton(
                  btnText: 'vibrate 10ms',
                  onPressed: () => Vibration.vibrate(duration: 10)),
              CustomButton(
                  btnText: 'vibrate 50ms',
                  onPressed: () => Vibration.vibrate(duration: 50)),
              CustomButton(
                  btnText: 'vibrate 100ms',
                  onPressed: () => Vibration.vibrate(duration: 100)),
              CustomButton(
                  btnText: 'vibrate 200ms',
                  onPressed: () => Vibration.vibrate(duration: 200)),
              CustomButton(
                  btnText: 'vibrate 300ms',
                  onPressed: () => Vibration.vibrate(duration: 300)),
              CustomButton(
                  btnText: 'vibrate 400ms',
                  onPressed: () => Vibration.vibrate(duration: 400)),
              CustomButton(
                  btnText: 'vibrate 500ms (default)',
                  onPressed: () => Vibration.vibrate(duration: 500)),

              /*const Expanded(child: SizedBox()),
              CustomButton(
                  color: Colors.black54,
                  onPressed: () => {},
                  btnText: 'Next Screen'),*/
            ],
          ),
        ),
      ),
    );
  }
}
