import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage(
      {super.key,
      required String name,
      required String email,
      required String address,
      required String phoneNumber});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
        backgroundColor: Colors.blue[900],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue[100]!, Colors.blue[300]!],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.account_circle,
                  size: 100,
                  color: Colors.blueAccent,
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: addressController,
                  decoration: InputDecoration(
                    labelText: 'Address',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: phoneController,
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Submitted Information'),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Name: ${nameController.text}'),
                            Text('Email: ${emailController.text}'),
                            Text('Address: ${addressController.text}'),
                            Text('Phone: ${phoneController.text}'),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, '/');
                            },
                            child: const Text('Close'),
                          ),
                        ],
                      ),
                    );
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
