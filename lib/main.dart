import 'package:flutter/material.dart';

void main() => runApp(SignUpPage());

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Add navigation logic here
            },
          ),
          centerTitle: true,
          title: RichText(
            text: TextSpan(
              children: [
                WidgetSpan(
                  child: Icon(Icons.bolt,
                      color: Colors.red), // Arrow icon in the name
                ),
                TextSpan(
                  text: " DealsDray",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    //Image.asset('assets/logo.png'), // Add your image/logo here
                    //SizedBox(height: 20),
                    Text("Let's Begin!",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                    Text("Please enter your credentials to proceed"),
                  ],
                ),
              ),
              SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Your Email ID',
                ),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  labelText: 'Create Password',
                  suffixIcon: IconButton(
                    icon: Icon(_obscureText
                        ? Icons.remove_red_eye
                        : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _obscureText =
                            !_obscureText; // Toggle password visibility
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Reference Code (optional)',
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Navigate to the next page
                  },
                  icon: Icon(Icons.arrow_forward,
                      color: Color.fromARGB(
                          255, 201, 26, 26)), // Right arrow icon in white
                  label: Text('Next'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(
                        255, 244, 242, 242), // Change button color to red
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
