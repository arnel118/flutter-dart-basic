import 'package:flutter/material.dart';
import 'package:my_app/dice_roll.dart';

const startAlignment = Alignment.topRight;
const endAlignment = Alignment.bottomLeft;

class TutorialHome extends StatelessWidget {
   const TutorialHome(this.color1, this.color2, this.color3, {super.key});

  final Color color1;
  final Color color2;
  final Color color3;


  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: [color1, color2, color3],
        ),
      ),
        child: const Center(
          child: DiceRoll(),
        ),
    );
  }
}

// class TutorialHome extends StatelessWidget {
//   const TutorialHome(this.colors, {super.key});

//   final List<Color> colors;

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           begin: startAlignment,
//           end: endAlignment,
//           colors: colors,
//         ),
//       ),
//         child: const Center(
//           child: StyledText('Hello World!')
//         ),
//     );
//   }
// }