import 'package:flutter/material.dart';

class HomepageMentor extends StatefulWidget {
  const HomepageMentor({super.key});

  @override
  State<HomepageMentor> createState() => _HomepageMentorState();
}

class _HomepageMentorState extends State<HomepageMentor> {
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
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Selamat Datang,',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          color: Color.fromARGB(255, 181, 172, 169),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Verry Wardana',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFE87C5F),
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/saya.JPG'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'List Mentoring Pasien',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
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
                        if (message['unreadCount'] > 0)
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
            ),
          ],
        ),
      ),
    );
  }
}
