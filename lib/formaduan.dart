import 'package:flutter/material.dart';
import 'package:flutter_application_1/LandingPage.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:intl/intl.dart';

class FormAduan extends StatefulWidget {
  const FormAduan({super.key});

  @override
  _FormAduanState createState() => _FormAduanState();
}

class _FormAduanState extends State<FormAduan> {
  final _formKey = GlobalKey<FormState>();
  String? _jenisPelecehan;
  DateTime? _selectedDate;
  final _locationController = TextEditingController();
  final _chronologyController = TextEditingController();

  Future<void> _pickDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  InputDecoration _inputDecoration(String hintText) {
    return InputDecoration(
      border: const OutlineInputBorder(
        borderSide: BorderSide(
          style: BorderStyle.solid,
          color: Color.fromRGBO(169, 169, 169, 1),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      hintText: hintText,
      hintStyle: const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16,
        color: Color.fromRGBO(144, 135, 135, 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LandingPage()),
            );
          },
        ),
        title: const Text(
          'Buat Laporan',
          style: TextStyle(
              fontSize: 30,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              color: Color(0xFFE87C5F)),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Jenis pelecehan*',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    DropdownButtonFormField<String>(
                      decoration: _inputDecoration('Pilih jenis pelecehan'),
                      value: _jenisPelecehan,
                      items: <String>['Verbal', 'Fisik', 'Seksual', 'Lainnya']
                          .map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          _jenisPelecehan = newValue;
                        });
                      },
                      validator: (value) {
                        if (value == null) {
                          return 'Mohon pilih jenis pelecehan';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Tanggal Kejadian*',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      readOnly: true,
                      decoration:
                          _inputDecoration('Pilih tanggal kejadian').copyWith(
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.calendar_month_rounded),
                          onPressed: () => _pickDate(context),
                        ),
                      ),
                      controller: TextEditingController(
                        text: _selectedDate == null
                            ? ''
                            : DateFormat('dd/MM/yyyy').format(_selectedDate!),
                      ),
                      validator: (value) {
                        if (_selectedDate == null) {
                          return 'Mohon pilih tanggal kejadian';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Lokasi*',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: _locationController,
                      decoration: _inputDecoration('Masukkan lokasi kejadian'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Mohon masukkan lokasi kejadian';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Kronologi kejadian*',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: _chronologyController,
                      decoration:
                          _inputDecoration('Masukkan kronologi kejadian'),
                      maxLines: 3,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Mohon masukkan kronologi kejadian';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Upload Foto',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: Colors.black, // 000000
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Icon(
                    Icons.image,
                    size: 50,
                    color: Colors.grey,
                  ),
                  const SizedBox(width: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Implementasikan fungsi unggah gambar di sini
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF8A083), // F8A083
                      textStyle: const TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600, // SemiBold
                      ),
                    ),
                    child: const Text(
                      'Upload',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Center(
                child: SizedBox(
                  width: 358,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      // Implementasikan fungsi selesai di sini
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF8A083), // F8A083
                      textStyle: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w600, // SemiBold
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: const Text(
                      'Selesai',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
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
