import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  bool isSending = false;
  String formStatus = '';

  Future<void> sendEmail() async {
    setState(() {
      isSending = true;
      formStatus = '';
    });

    final uri = Uri.parse('https://formspree.io/f/mdkddnda'); // ⬅️ Replace with your Formspree URL

    final response = await http.post(
      uri,
      headers: {'Content-Type': 'application/json'},
      body: '''
      {
        "name": "${nameController.text}",
        "email": "${emailController.text}",
        "message": "${messageController.text}"
      }
      ''',
    );

    if (response.statusCode == 200) {
      setState(() {
        formStatus = 'Message sent successfully!';
        nameController.clear();
        emailController.clear();
        messageController.clear();
      });
    } else {
      setState(() {
        formStatus = 'Failed to send message.';
      });
    }

    setState(() {
      isSending = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
         width: double.infinity,
      height: double.infinity,
      child:




             Center(
               child: Container(
                width: 500,
                height: 600,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Color(0xFF010E18),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 12,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "Contact Me",
                        style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: nameController,
                        decoration: const InputDecoration(
                          labelText: 'Your Name',
                          labelStyle: TextStyle(color: Colors.white70),
                          filled: true,
                          fillColor: Colors.white12,
                          border: OutlineInputBorder(),
                        ),
                        style: const TextStyle(color: Colors.white),
                        validator: (value) => value!.isEmpty ? 'Name is required' : null,
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          labelText: 'Your Email',
                          labelStyle: TextStyle(color: Colors.white70),
                          filled: true,
                          fillColor: Colors.white12,
                          border: OutlineInputBorder(),
                        ),
                        style: const TextStyle(color: Colors.white),
                        validator: (value) => value!.isEmpty ? 'Email is required' : null,
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: messageController,
                        decoration: const InputDecoration(
                          labelText: 'Your Message',
                          labelStyle: TextStyle(color: Colors.white70),
                          filled: true,
                          fillColor: Colors.white12,
                          border: OutlineInputBorder(),
                        ),
                        style: const TextStyle(color: Colors.white),
                        maxLines: 5,
                        validator: (value) => value!.isEmpty ? 'Message is required' : null,
                      ),
                      const SizedBox(height: 20),
                      isSending
                          ? const CircularProgressIndicator(color: Colors.teal)
                          : ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            sendEmail();
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal,
                          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                        ),
                        child: const Text('Send', style: TextStyle(color: Colors.white)),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        formStatus,
                        style: const TextStyle(color: Colors.white70),
                      ),
                    ],
                  ),
                ),
                           ),
             ),



    );
  }
}
