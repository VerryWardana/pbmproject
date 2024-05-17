import 'package:flutter/material.dart';

class FormAduan extends StatefulWidget {
  const FormAduan({super.key});

  @override
  State<FormAduan> createState() => FormAduanState();
}

class FormAduanState extends State<FormAduan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new_rounded),
        title: const Text('Form Aduan'),
        titleTextStyle: const TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Nama",
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Isi Aduan",
                ),
                maxLines: 5, // Allow multiple lines for the complaint
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Handle form submission (you can add logic here)
                },
                child: const Text('Kirim'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
