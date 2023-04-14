import 'package:flutter/material.dart';
import 'package:travel_app/features/splach/presentation/views/widgets/splach_view_body.dart';

class SplachView extends StatelessWidget {
  const SplachView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplachViewBody(),
    );
  }
}
