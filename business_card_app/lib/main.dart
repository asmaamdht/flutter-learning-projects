import 'package:flutter/material.dart';

void main() {
  runApp(BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  //I don't No Why He Add This Her?!
  const BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF2B475E),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 117,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 115,
                backgroundImage: AssetImage('images/card_img.png'),
              ),
            ),
            Text(
              "Asmaa Medhat",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontFamily: 'Pacifico',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Text(
                "FLUTTER DEVELOPER",
                style: TextStyle(
                  color: Color(0xFF6C8090),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(thickness: 0.3, indent: 40, endIndent: 40, height: 5),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),

              child: ListTile(
                minTileHeight: 64,
                leading: Icon(Icons.phone, size: 32, color: Color(0xFF2B475E)),
                title: Text(
                  "(+01) 010 4587 5896",
                  style: TextStyle(fontSize: 22),
                ),
              ),
            ),

            // Container(
            //   margin: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(4),
            //     color: Colors.white,
            //   ),
            //   height: 64,
            //   child: Row(
            //     children: [
            //       Padding(
            //         padding: EdgeInsets.only(left: 16),
            //         child: Icon(
            //           Icons.phone,
            //           size: 32,
            //           color: Color(0xFF2B475E),
            //         ),
            //       ),
            //       Padding(
            //         padding: EdgeInsets.only(left: 22),
            //         child: Text(
            //           "(+01) 010 4587 5896",
            //           style: TextStyle(fontSize: 22),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15, horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.white,
              ),
              height: 64,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Icon(Icons.mail, size: 32, color: Color(0xFF2B475E)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 22),
                    child: Text(
                      "AsmaaMedhat@gmail.com",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
