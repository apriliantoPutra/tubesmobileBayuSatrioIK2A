import 'package:flutter/material.dart';
import 'package:uts/page/login.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white54,
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            ListTile(
              leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back),
              ),
              trailing: Icon(Icons.menu),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  maxRadius: 65,
                  backgroundImage: AssetImage("asset/gambar/6195145.jpg"),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage("asset/gambar/download.png"),
                ),
                SizedBox(
                  width: 15,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("asset/gambar/GooglePlus-logo-red.png"),
                ),
                SizedBox(
                  width: 15,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("asset/gambar/1_Twitter-new-icon-mobile-app.jpg"),
                ),
                SizedBox(
                  width: 15,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("asset/gambar/600px-LinkedIn_logo_initials.png"),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Thomas Slebew",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 26),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [Text("@peakyBlinders")],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Master manipulator, deal-maker and\n                   entrepreneur",
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView(
                children: [
                  buildCard(Icons.privacy_tip_sharp, 'Privacy'),
                  buildCard(Icons.history, 'Purchase History'),
                  SizedBox(height: 10),
                  buildCard(Icons.help_outline, 'Help & Support'),
                  SizedBox(height: 10),
                  buildCard(Icons.privacy_tip_sharp, 'Settings'),
                  SizedBox(height: 10),
                  buildCard(Icons.add_reaction_sharp, 'Invite a Friend'),
                  SizedBox(height: 10),
                  buildCard(Icons.logout, 'Logout', onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCard(IconData leadingIcon, String title, {Function()? onTap}) {
    return Card(
      color: Colors.white70,
      margin: const EdgeInsets.only(left: 35, right: 35, bottom: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: ListTile(
        leading: Icon(
          leadingIcon,
          color: Colors.black54,
        ),
        title: Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios_outlined,
          color: Colors.black54,
        ),
        onTap: onTap,
      ),
    );
  }
}
