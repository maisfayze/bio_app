import 'package:bio_app/widget/custom_bio_card.dart';
import 'package:bio_app/widget/custom_card_listTitle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BioScreen());
}

class BioScreen extends StatelessWidget {
  const BioScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          '  BIO',
          style: TextStyle(
            color: Color(0xFFEB4747),
            fontSize: 24,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              Color(0xFFD9F8C4),
              Color(0xFFFAD9A1),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://light.wiki/wp-content/uploads/2021/08/light-wiki-ana.png'),
            ),
            SizedBox(height: 16),
            Text('Mais fayze keshta ',
                style: GoogleFonts.aBeeZee(
                    fontWeight: FontWeight.bold, fontSize: 22)),
            SizedBox(height: 16),
            Text(
              'elancer flutter 2022',
              style: GoogleFonts.aBeeZee(
                fontSize: 16,
                height: 0.5,
              ),
            ),
            Divider(
              thickness: 1,
              color: Color(0xFFEB4747),
              indent: 40,
              endIndent: 40,
              height: 50,
            ),
            cardListTitle(
              leadingIcon: Icons.phone_android_rounded,
              title: 'Mobile',
              subTitle: '+970-592-496-091',
              trailingIcon: Icons.phone,
              marginBottom: 16,
              onActionPressed: () {
                print('open Mobile');
                _showMessage(context, message: 'open Mobile');
              },
            ),
            // SizedBox(height:16,),
            cardListTitle(
              leadingIcon: Icons.email,
              title: 'Email',
              subTitle: 'maiskashta@gmail.com',
              trailingIcon: Icons.send,
              marginBottom: 16,
              onActionPressed: () {
                print('send Email');
                _showMessage(context, message: 'send Email');
              },
            ),
            cardListTitle(
              leadingIcon: Icons.location_on_outlined,
              title: 'Location',
              subTitle: 'Gaza-Rafah-GorgeStreet',
              trailingIcon: Icons.add_box_rounded,
              onActionPressed: () {
                print('Open Map');
                _showMessage(context, message: 'Open Map');
              },
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      print('Facebook');
                    },
                    icon: Icon(Icons.facebook)),
                IconButton(
                    onPressed: () {
                      print('Tiktok');
                    },
                    icon: Icon(Icons.tiktok_rounded)),
                IconButton(
                    onPressed: () {
                      print('Snapchat');
                    },
                    icon: Icon(Icons.snapchat)),
                IconButton(
                    onPressed: () {
                      print('Telegram');
                    },
                    icon: Icon(Icons.telegram)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showMessage(BuildContext context, {required String message}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Color(0xFFCC704B),
        behavior: SnackBarBehavior.floating,
        elevation: 5,
        onVisible: () => print('Visible'),
        dismissDirection: DismissDirection.horizontal,
        duration: const Duration(seconds: 3),
        action: SnackBarAction(
          label: 'UNDO',
          onPressed: () {
            print('UNDO DONE ');
          },
          textColor: Colors.black,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
