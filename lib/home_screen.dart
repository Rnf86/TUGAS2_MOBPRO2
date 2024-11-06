import 'package:flutter/material.dart';
import 'package:tugaspm2_rizqiana/const/resource.dart';
import 'package:tugaspm2_rizqiana/profile_screen.dart';
import 'package:tugaspm2_rizqiana/styles.dart';
import 'package:tugaspm2_rizqiana/widget/custom_textfield.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.email}) : super(key: key);

  // Make the email final and type-safe
  final String email;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text("Home", style: TextStyles.title,
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
              Image.asset(R.ASSETS_IMAGES_HOME_IMG_PNG),
              const SizedBox(height: 24.0),
              Text("Welcome, ${widget.email}"),
              const SizedBox(height: 50.0),
              ElevatedButton(
                onPressed: () {// Navigate to the second page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileScreen(email: widget.email,)),
                  );},
                child: Text(
                  'Kunjungi Profile',
                  style: TextStyles.title.copyWith(fontSize: 20.0),
                ),
              ),

            ],

          ),
        )

    );
  }
}