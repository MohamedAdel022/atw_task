import 'package:atw_project/core/utils/assets.dart';
import 'package:flutter/material.dart';

class ArrowBackButton extends StatelessWidget {
  const ArrowBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: Image.asset(Assets.iconsArrowTurnLeft, width: 40, height: 40));
  }
}
