import 'package:flutter/material.dart';
import 'package:my_app/widgets/custom_button.dart';
import 'package:my_app/widgets/custom_slider.dart';

class OptionsScreen extends StatefulWidget {
  const OptionsScreen({super.key});

  @override
  State<OptionsScreen> createState() => _OptionsScreenState();
}

class _OptionsScreenState extends State<OptionsScreen> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  CustomButton(
                    onPressed: () => Navigator.pop(context),
                    buttonText: 'Voltar',
                  ),
                ],
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text('BGM', style: TextStyle(fontSize: 36.0)),
                          CustomSlider()
                        ],
                      ),
                      Column(
                        children: [
                          Text('SFX', style: TextStyle(fontSize: 36.0)),
                          CustomSlider()
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  CustomButton(
                    onPressed: () => (),
                    buttonText: 'Text to\nspeech',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
