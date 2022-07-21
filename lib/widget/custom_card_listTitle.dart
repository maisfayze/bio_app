import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class cardListTitle extends StatelessWidget {
  const cardListTitle({
    Key? key,
    required this.leadingIcon,
    required this.title,
    required this.subTitle,
    required this.trailingIcon,
    required this.onActionPressed,
    this.marginBottom = 0,
  }) : super(key: key);
  final IconData leadingIcon;
  final String title;
  final String subTitle;
  final IconData trailingIcon;
  final double marginBottom;
  final void Function() onActionPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: Color(0xFFEB4747),
      color: Color(0xFF95CD41),
      margin: EdgeInsets.only(
        right: 20,
        left: 20,
        bottom: marginBottom,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Icon(
          leadingIcon,
          color: Colors.black,
        ),
        title: Text(
          title,
          style: GoogleFonts.asul(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        subtitle: Text(
          subTitle,
          style: GoogleFonts.asul(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        trailing: IconButton(
          onPressed: onActionPressed,
          icon: Icon(
            trailingIcon,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
