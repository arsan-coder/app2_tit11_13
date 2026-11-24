import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
    ),
        home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('my_social_profile'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuAyO7nuHUpXvv_O4guDFR_MuqmZs1Y6JtjKZgmyfCXSVFttWTZE5TIZ4u&s=10"),//ใส่รูปโปรไฟล์
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Column(
                          children: [
                            Text('3',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold)),
                            Text('โพสต์'),
                          ],
                        ),
                        Column(
                          children: [
                            Text('0',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold)),
                            Text('ผู้ติดตาม'),
                          ],
                        ),
                        Column(
                          children: [
                            Text('500',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold)),
                            Text('กำลังติดตาม'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'นายอาสาฬห์ ดวงกำ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text('ไม่กินเรียบก็กลับบ้านมือเปล่า'),
                    Text('นั่นก็คือนั่น นี่ก็คือนี่'),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: FilledButton(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                          backgroundColor: Colors.lightBlue
                      ),
                      child: const Text('ติดตาม'),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.lightBlue
                      ),
                      child: const Text('ข้อความ'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.grid_on, size: 28),
                  Icon(Icons.person_pin, size: 28),
                ],
              ),
              GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEwLwm5cJIcIMNAPqMX1uQRjDu7wKJAKhLf8Nauk-WGw&s=10',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYbgSeEqEe50PsNqKdCLsg2CuHnxYJfXL8CNG71XErTQ&s',
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-_p2Dj2KK5wOTiCW4uVys8BAk-FHr8wMVgY76mXkyPw&s=10',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}