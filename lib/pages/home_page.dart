import 'package:flutter/material.dart';
import 'package:flutter_latihan_slicing_2/components/goclub.dart';
import 'package:flutter_latihan_slicing_2/components/gopay.dart';
import 'package:flutter_latihan_slicing_2/components/gopaylater.dart';
import 'package:flutter_latihan_slicing_2/components/instantaccess.dart';
import 'package:flutter_latihan_slicing_2/components/menu.dart';
import 'package:flutter_latihan_slicing_2/components/news.dart';
import 'package:flutter_latihan_slicing_2/components/searchbar.dart';
import 'package:flutter_latihan_slicing_2/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: green2,
        elevation: 0,
        toolbarHeight: 71,
        title: const Header(),
      ),
      body: const Body(),
    );
  }
}

// Header
class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: green1,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Text(
              'Beranda',
              style: semibold14.copyWith(color: green1),
            ),
          ),
          ...['Promo', 'Pesanan', 'Chat'].map(
            (title) => Flexible(
              fit: FlexFit.loose,
              child: InkWell(
                onTap: () {
                  // Navigate to the corresponding page
                  if (title == 'Promo') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PromoPage()),
                    );
                  } else if (title == 'Pesanan') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PesananPage()),
                    );
                  } else if (title == 'Chat') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ChatPage()),
                    );
                  }
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 14),
                  child: Center(
                    child: Text(
                      title,
                      style: semibold14.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// Search Bar and Profile
class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Search Bar and Profile Pictures
          Search(),

          // Gopay
          GoPay(),

          // Menu Section Icons
          Menus(),

          // Go CLub
          GoClub(),

          // Instant Access
          InstantAccess(),

          // GopayLater
          GoPayLater(),

          // News
          News(),
        ],
      ),
    );
  }
}

// Promo Page
class PromoPage extends StatelessWidget {
  const PromoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Promo'),
      ),
      body: const Center(
        child: Text('This is the Promo Page'),
      ),
    );
  }
}

// Pesanan Page
class PesananPage extends StatelessWidget {
  const PesananPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pesanan'),
      ),
      body: const Center(
        child: Text('This is the Pesanan Page'),
      ),
    );
  }
}

// Chat Page
class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
      ),
      body: const Center(
        child: Text('This is the Chat Page'),
      ),
    );
  }
}
