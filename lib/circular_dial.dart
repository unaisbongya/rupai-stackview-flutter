import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

final customWidth05 = CustomSliderWidths(trackWidth: 20, progressBarWidth: 20, shadowWidth: 30);
final customColors05 = CustomSliderColors(
    dotColor: HexColor('#312a2a'), trackColor: HexColor('#fde8dd'), progressBarColors: [HexColor('#d88969'), HexColor('#d88969')], shadowColor: HexColor('#fde8dd'), shadowMaxOpacity: 0.05);
final info05 = InfoProperties(
  topLabelStyle: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
  topLabelText: '',
  bottomLabelStyle: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
  bottomLabelText: '',
  mainLabelStyle: const TextStyle(color: Colors.white, fontSize: 50.0, fontWeight: FontWeight.w600),
);
final CircularSliderAppearance appearance05 =
    CircularSliderAppearance(customWidths: customWidth05, customColors: customColors05, infoProperties: info05, startAngle: 270, angleRange: 360, size: 350.0);

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

class CircularDial extends StatelessWidget {
  const CircularDial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SleekCircularSlider(
      onChangeStart: (double value) {},
      onChangeEnd: (double value) {},
      appearance: appearance05,
      min: 0,
      max: 450000,
      initialValue: 60000,
      innerWidget: (double value) {
        return Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Credit amount',
                style: TextStyle(color: Colors.grey, fontSize: 16.0, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                '₹ ${value.toInt()}',
                style: const TextStyle(color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                '@1.04% Monthly',
                style: TextStyle(color: Colors.greenAccent, fontSize: 12.0, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        );
      },
    ));
  }
}
