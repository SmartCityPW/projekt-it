import 'package:flutter/material.dart';
import 'package:projekt_it/theme/theme_constants.dart';

class HomePageButton extends StatelessWidget {
  String imagePath;
  String title;
  Function()? onTap;
  HomePageButton(this.imagePath, this.title, this.onTap, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            clipBehavior: Clip.antiAlias,
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(70.0),
                  topRight: Radius.circular(70.0)),
            ),
            child: Image.asset(imagePath, fit: BoxFit.none),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style:
                FONT_HEADING_MEDIUM.copyWith(color: Color.fromRGBO(0, 0, 0, 1)),
          )
        ],
      ),
    );
  }
}
