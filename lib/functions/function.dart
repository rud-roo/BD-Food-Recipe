import 'package:flutter/rendering.dart';

SliverGridDelegateWithFixedCrossAxisCount customGridDegate() {
  return const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      );
}