import 'package:flutter/material.dart';
import 'package:widget_1/Views/profilview.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Instagram-like logo or title
            Text(
              "ItsGrem",
              style: TextStyle(
                fontFamily: 'Billabong',
                fontSize: 48,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 50),
            
            // Username input field
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(height: 20),
            
            // Password input field
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(height: 30),
            
            // Login button
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                backgroundColor: Colors.blueAccent,
              ),
              child: Text(
                'Log In',
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 20),
            
            // Other navigation buttons
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
              child: Text('Home'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context_) => profilview(
                      nama: 'Haris',
                      alamat: 'Malang',
                      juara: 123,
                    ),
                  ),
                );
              },
              child: Text('Profile'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/transaksi',
                  arguments: {
                    'id': 1,
                    'product': 'bag',
                    'price': 70,
                  },
                );
              },
              child: Text("Transaksi"),
            ),
          ],
        ),
      ),
    );
  }
}
