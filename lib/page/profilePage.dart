import 'package:flutter/material.dart';
import 'package:new_app_2110020019_/page/homePage.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
        title: const Text("My Profil",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 50,
                  backgroundImage: AssetImage('assets/profile.jpeg'),
                ),
                const SizedBox(width: 40),
                const Text(
                  'Farid Akbar ',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Divider(),
                const Text(
                  'NPM:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  '2110020019',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Divider(),
                const SizedBox(height: 16),
                const Text(
                  'Kelas:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  '5A SI Reguler Pagi Banjarmasin',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Divider(),
                const SizedBox(height: 16),
                const Text(
                  'Kontak:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  '085828548113',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Divider(),
                const SizedBox(height: 16),
                const Text(
                  'Alamat:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Jl. Simpang Gusti No 34 Kelurahan No 20',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Divider(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
