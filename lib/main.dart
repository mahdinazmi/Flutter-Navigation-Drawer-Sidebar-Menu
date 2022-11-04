import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'Notifications': (context) => const Notifications(),
      },
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State < Home > {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
            'FLUTTER GUYS - DRAWER',
            style: TextStyle(fontSize: 14),
          ),
          backgroundColor: const Color.fromARGB(255, 17, 15, 65),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            _buildHeader(),
            _buildItem(
              icon: Icons.home_rounded,
              title: 'Home',
              onTap: ()=> Navigator.pop(context)
            ),
            _buildItem(
              icon: Icons.notifications_rounded,
              title: 'Notifications',
              onTap: ()=> Navigator.pushNamed(context, 'Notifications')
            ),
            _buildItem(
              icon: Icons.person,
              title: 'Profile',
              onTap: ()=> Navigator.pushNamed(context, 'Profile')
            ),
            _buildItem(
              icon: Icons.settings,
              title: 'Setting',
              onTap: ()=> Navigator.pushNamed(context, 'Setting')
            )
          ]
        )
      )
    );
  }

  Widget _buildHeader() {
    return DrawerHeader(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 17, 15, 65),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile-image.jpg'),
            radius: 40,
          ),
          SizedBox(height: 20, ),
          Text(
            'Mahdi Nazmi',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ),
          )
        ],
      )
    );
  }

  Widget _buildItem({required IconData icon, required String title, required GestureTapCallback onTap}){
    return ListTile(
      leading: Icon(icon),
      minLeadingWidth: 5,
      title: Text(title),
      onTap: onTap,
    );
     
  }
}














class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
            'PROFILE',
            style: TextStyle(fontSize: 14),
          ),
          backgroundColor: const Color.fromARGB(255, 17, 15, 65),
      )
    );
  }
}

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
            'NOTIFICATIONS',
            style: TextStyle(fontSize: 14),
          ),
          backgroundColor: const Color.fromARGB(255, 17, 15, 65),
      )
    );
  }
}