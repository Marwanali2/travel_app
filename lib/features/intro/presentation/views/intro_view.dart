import 'package:flutter/material.dart';
import 'package:travel_app/features/intro/presentation/views/widgets/intro_view_body.dart';

class IntroView extends StatelessWidget {
  const IntroView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: IntroViewBody(),
    );
  }
}
