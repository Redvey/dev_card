import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main(){
  runApp(const portfolio_App());
}

// ignore: camel_case_types
class portfolio_App extends StatelessWidget {
  const portfolio_App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Main_screen(),
    );
  }
}
// ignore: camel_case_types
class Main_screen extends StatelessWidget {
  const Main_screen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFE0B0FF),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: double.infinity,
            ),

            const CircleAvatar(
              backgroundImage: AssetImage("mages/ima.png"),
              radius: 45,
            ),
            const SizedBox(height: 5,),
            Text("Meowzie",
                style: GoogleFonts.ysabeau(
                    fontSize: 17
                )),
            Text("FLUTTER DEVELOPER", style: GoogleFonts.chakraPetch(
                fontSize: 20
            ),),
            Container(
              height: 1,
              width: 150,
              color: const Color(0xFF39293F),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async{
                Uri phoneno = Uri.parse('tel:+91 9799799799');
                if (await launchUrl(phoneno)) {
                  //dialer opened
                }else{
                  //dailer is not opened
                }
              },

              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF5DEFD),
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(
                    color: Color(0xFF39293F),
                    width: 1,
                  ),
                ),
                fixedSize: const Size(350, 55),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(FlutterIcons.phone_android_mdi),
                  const SizedBox(
                    width: 2,
                  ),
                  Text(
                    "+91 9799799799",
                    style: GoogleFonts.chakraPetch(color:const Color(0xFF39293F) ,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),



            const SizedBox(
              height: 20,
            ),


            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () async{
                String email = Uri.encodeComponent("rickvey21@gmail.com");
                String subject = Uri.encodeComponent("Hello Flutter");
                String body = Uri.encodeComponent("Hi! I'm <type your name>");
                Uri mail = Uri.parse("mailto:$email?subject=$subject&body=$body");
                if (await launchUrl(mail)) {
                  //email app opened
                }else{
                  //email app is not opened
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF5DEFD),
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(
                    color: Color(0xFF39293F),
                    width: 1,
                  ),
                ),
                fixedSize: const Size(350, 55),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(FlutterIcons.mail_mdi),
                  const SizedBox(
                    width: 2,
                  ),
                  Text(
                    "roopam12cse@gmail.com",
                    style: GoogleFonts.chakraPetch(color:const Color(0xFF39293F) ,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),


          ],
        ),
        appBar: AppBar(
          backgroundColor: const Color(0xFF39293F),
          centerTitle: true,
          title: Text("My Portfolio",
            style: GoogleFonts.lobster(
                fontSize: 20, color: const Color(0xFFFCFCFC)
            ),
            // style: TextStyle(fontFamily: GoogleFonts.lobster()),),
            // backgroundColor: Color(0xFF25D266),

          ),
        ));
  }
}
