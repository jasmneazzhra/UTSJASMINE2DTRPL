// ignore_for_file: use_build_context_synchronously

import 'dart:async';
import 'package:flutter/material.dart';
import 'home_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        backgroundColor: Colors.blue[900],
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment:
                CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Create a New Account',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  obscureText: true,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  Future.delayed(const Duration(seconds: 5), () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(
                          name: 'Jane Doe',
                          email: emailController.text,
                          address: '456 Side St',
                          phoneNumber: '0987654321',
                        ),
                      ),
                    );
                  });
                },
                child: const Text('Register'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: const Text(
                  'Already have an account? Login',
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
