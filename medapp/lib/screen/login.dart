import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes the debug banner
      title: 'Quick Medical',
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Display the uploaded image
              Image.network(
              'data:image/png;base64,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', // Replace this URL with the link to your image
              height: 80,
              ),
              SizedBox(height: 16),
              Text(
                'Quick Medical',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Please Enter your Mobile Number to Login/Sign Up',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 16),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 300), // Adjust width
                child: TextField(
                  controller: _phoneNumberController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: '+92 xxxxxxxxxx',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8), // Rounded corners
                    ),
                    prefixIcon: Icon(Icons.phone),
                  ),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Implement login logic here
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25), // Fully rounded button
                  ),
                  backgroundColor: Color(0xFF4169E1), // Button color from the image
                ),
                child: Text(
                  'CONTINUE',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
