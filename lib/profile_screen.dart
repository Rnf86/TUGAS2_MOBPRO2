import 'package:flutter/material.dart';
import 'package:tugaspm2_rizqiana/const/resource.dart';
import 'package:tugaspm2_rizqiana/login_screen.dart';
import 'package:tugaspm2_rizqiana/styles.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key, required this.email}) : super(key: key);

  // Make the email final and type-safe
  final String email;

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Profile",
            style: TextStyles.title,
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(R.ASSETS_IMAGES_ABOUT_ME_PNG),
              const SizedBox(height: 24.0),
              Text(
                'Nama : Rizqiana Nurhafizh \n'
                'Email : ${widget.email} \n'
                    'Tempat/Tgl lahir : 03 Juni 1998\n'
                    'Alamat : Bandung, Jawabarat, Indonesia\n',
                style: TextStyles.title.copyWith(fontSize: 20.0),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigate to the second page
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                    (Route<dynamic> route) => false,
                  );
                },
                child: Text(
                  'Logout',
                  style: TextStyles.title.copyWith(fontSize: 20.0),
                ),
              ),
            ],
          ),
        ));
  }
}
