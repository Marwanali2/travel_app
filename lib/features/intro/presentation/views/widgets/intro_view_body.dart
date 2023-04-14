import 'package:flutter/material.dart';

import '../../../../../core/utils/models/responsive_button.dart';
import '../../../../../core/utils/models/text_model.dart';

class IntroViewBody extends StatelessWidget {
  const IntroViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            "assets/images/pexels-pixabay-531602.png",
          ),
        ),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 500.0,
            left: 20.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                TextModel(
                  text: "Enjoy Your Vacations With ,",
                  fontFamily: "Merienda",
                  size: 25.0,
                ),
                SizedBox(height: 10,),
                TextModel(
                  text: "Travela App",
                  fontFamily: "CinzelDecorative",
                  size: 25.0,
                ),
                SizedBox(height: 10,),
                Container(
                  width: 300,
                  child: TextModel(
                    text: "Book your tour now around most famous tourist places in Egypt and worldwide now , enjoy!",
                    fontFamily: "Merienda",
                    size: 15.0,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height:150,),
                ResponsiveButton(width: 145, height: 50),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
