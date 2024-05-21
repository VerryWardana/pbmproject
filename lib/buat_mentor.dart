import 'package:flutter/material.dart';

class BuatMentorPage extends StatelessWidget {
  const BuatMentorPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF0E5),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFF0E5),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Tambah Mentor',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 32,
            fontWeight: FontWeight.bold, // Bold
            color: Color(0xFFF88A65), // F88A65
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Column(
                children: [
                  Text(
                    'Isi form dibawah untuk menambah mentor dalam aplikasi',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w500, // Medium
                      color: Colors.black, // 000000
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            _buildTextField('Nama'),
            const SizedBox(height: 16),
            _buildTextField('Asal'),
            const SizedBox(height: 16),
            _buildTextField('Deskripsi'),
            const SizedBox(height: 32),
            const Text(
              'Upload Foto Mentor',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                fontWeight: FontWeight.w600, // SemiBold
                color: Colors.black, // 000000
              ),
            ),
            const SizedBox(height: 8),
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
            const SizedBox(height: 32),
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
    );
  }

  Widget _buildTextField(String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16,
            fontWeight: FontWeight.w600, // SemiBold
            color: Colors.black, // 000000
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          width: 382,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
          ),
        ),
      ],
    );
  }
}
