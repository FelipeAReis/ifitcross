import 'package:flutter/material.dart';

class Wod extends StatelessWidget {
  const Wod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(children: [
        TextSpan(text: 'A.M.R.A.P in 12 min.: \n\n'),
        TextSpan(text: '10 Push ups (com palma) \n\n'),
        TextSpan(text: '25 Double Under \n\n'),
        TextSpan(text: '10 Push Jerk (15, 30 ou 42 Kg) \n\n')
      ]),
      softWrap: true,
    );
  }
}
