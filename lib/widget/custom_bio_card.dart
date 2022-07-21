import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBioCard extends StatelessWidget {
  const CustomBioCard({
    Key? key,
    required IconData leadingIcon,
    required String title,
    required String subTitle,
    required IconData trailingIcon,
  })  : _leadingIcon = leadingIcon,
        _title = title,
        _subTitle = subTitle,
        _trailingIcon = trailingIcon,
        super(key: key);
  final IconData _leadingIcon;
  final String _title;
  final String _subTitle;
  final IconData _trailingIcon;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: Color(0xFFEB4747),
      color: Color(0xFF95CD41),
      margin: EdgeInsets.only(
        right: 20,
        left: 20,
        bottom:16,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Icon(_leadingIcon),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _title,
                  style: GoogleFonts.asul(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  _subTitle,
                  style: GoogleFonts.asul(
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Spacer(),
            IconButton(onPressed: () {}, icon: Icon( _trailingIcon)),
          ],
        ),
      ),
    );
  }
}
