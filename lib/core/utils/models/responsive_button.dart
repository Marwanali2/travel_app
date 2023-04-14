import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/core/utils/models/text_model.dart';
import '../../../constants.dart';

class ResponsiveButton extends StatelessWidget {
  final bool isResponsive;
  final double width;
  final double height;

  const ResponsiveButton(
      {Key? key,
      required this.width,
      required this.height,
      this.isResponsive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: kPrimaryColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            TextModel(
              text: "Explore",
              size: 18,
              fontFamily: "Merienda",
            ),
            const FaIcon(FontAwesomeIcons.anglesRight, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
