import 'package:flutter/material.dart';

void main() {
  runApp(const Windows11App());
}

class Windows11App extends StatelessWidget {
  const Windows11App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false, // Menyembunyikan tulisan "debug"
      home: const Windows11HomePage(),
    );
  }
}

class Windows11HomePage extends StatefulWidget {
  const Windows11HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _Windows11HomePageState createState() => _Windows11HomePageState();
}

class _Windows11HomePageState extends State<Windows11HomePage> {
  bool _forgotPasswordChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sandi Adi'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'background.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const FlutterLogo(
                  size: 100.0,
                ),
                const SizedBox(height: 20.0),
                SizedBox(
                  width: 300.0,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Username',
                      prefixIcon: const Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                SizedBox(
                  width: 300.0,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Password',
                      prefixIcon: const Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    obscureText: true,
                  ),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: _forgotPasswordChecked,
                      onChanged: (value) {
                        setState(() {
                          _forgotPasswordChecked = value ?? false;
                        });
                      },
                    ),
                    const Text(
                      'Lupa Password?',
                      style: TextStyle(
                        color: Color.fromARGB(255, 230, 25, 25),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    // Proses verifikasi login dapat ditambahkan di sini
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text('Login'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
