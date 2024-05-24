import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/user/navbar_bawah.dart';

class ListPesan extends StatefulWidget {
  const ListPesan({super.key});

  @override
  State<ListPesan> createState() => _ListPesanState();
}

class _ListPesanState extends State<ListPesan> {
  // Dummy data for demonstration purposes
  final List<Map<String, dynamic>> messages = [
    {
      'name': 'Akbar',
      'lastMessage': 'Hello! How are you?',
      'lastOnline': '10:30 AM',
      'unreadCount': 2,
      'profileImage': 'assets/images/Akbar.jpeg',
    },
    {
      'name': 'Dheo',
      'lastMessage': 'Can we meet tomorrow?',
      'lastOnline': '9:15 AM',
      'unreadCount': 1,
      'profileImage': 'assets/images/Dheo.jpeg',
    },
    {
      'name': 'Veri',
      'lastMessage': 'Sure, see you then!',
      'lastOnline': 'Yesterday',
      'unreadCount': 0,
      'profileImage': 'assets/images/Veri.jpeg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NavbarBawah()),
            );
          },
        ),
        title: const Text(
          'List Pesan',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(0xFFE87C5F),
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          final message = messages[index];
          return ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            leading: CircleAvatar(
              backgroundImage: AssetImage(message['profileImage']),
            ),
            title: Text(
              message['name'],
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  message['lastMessage'],
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  message['lastOnline'],
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                if (message['unreadCount'] >
                    0) // Hanya tampilkan jika ada pesan yang belum dibaca
                  Container(
                    margin: const EdgeInsets.only(top: 4),
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      message['unreadCount'].toString(),
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
