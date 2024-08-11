import 'package:flutter/material.dart';
import 'package:flutter_latihan_slicing_2/datas/icons.dart';
import 'package:flutter_latihan_slicing_2/datas/news.dart';
import 'package:flutter_latihan_slicing_2/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Search Bar and Profile Pictures
          Padding(
            padding: const EdgeInsets.only(top: 23, left: 15, right: 15),
            child: Row(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFAFAFA),
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: const Color(0xFFE8E8E8),
                      ),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/search.svg',
                          // ignore: deprecated_member_use
                          color: dark1,
                          width: 20,
                          height: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Cari layanan, makananm & tujuan',
                          style: regular14.copyWith(color: dark3),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                SizedBox(
                  width: 35,
                  height: 35,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35 / 2),
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: Image.asset('assets/images/avatar.png'),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        width: 10,
                        height: 16,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35 / 2),
                            color: const Color(0xFFD1E7EE),
                          ),
                          clipBehavior: Clip.hardEdge,
                          child: SvgPicture.asset(
                            'assets/icons/goclub.svg',
                            // ignore: deprecated_member_use
                            color: blue3,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Gopay
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
              top: 15,
            ),
            child: Container(
              height: 96,
              decoration: BoxDecoration(
                color: blue1,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 2,
                          height: 8,
                          decoration: BoxDecoration(
                            color: const Color(0xFFBBBBBB),
                            borderRadius: BorderRadius.circular(1),
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Container(
                          width: 2,
                          height: 8,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      children: [
                        Container(
                          height: 11,
                          width: 118,
                          decoration: const BoxDecoration(
                            color: Color(0xFF9CCDDB),
                            borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(8),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Container(
                          height: 68,
                          width: 127,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/gopay.png',
                                height: 13,
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                'Rp.15.300',
                                style: bold16.copyWith(
                                  color: dark1,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                'Klik & cek riwayat',
                                style: semibold12_5.copyWith(
                                  color: green1,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  ...gopayIcons.map(
                    (icon) => Flexible(
                      fit: FlexFit.tight,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: SvgPicture.asset(
                              'assets/icons/${icon.icon}.svg',
                              // ignore: deprecated_member_use
                              color: blue1,
                            ),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Text(
                            icon.title,
                            style: semibold14.copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Menu Section Icons
          Padding(
            padding: const EdgeInsets.only(left: 27, right: 27, top: 32),
            child: SizedBox(
              height: 160,
              child: GridView.count(
                crossAxisCount: 4,
                mainAxisSpacing: 8,
                children: [
                  ...menuIcons.map(
                    (icon) => Column(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: icon.icon == 'goclub'
                                ? Colors.white
                                : icon.color,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: SvgPicture.asset(
                            'assets/icons/${icon.icon}.svg',
                            // ignore: deprecated_member_use
                            color: icon.icon == 'goclub'
                                ? icon.color
                                : icon.icon == 'other'
                                    ? dark2
                                    : Colors.white,
                            width: 24,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          icon.title,
                          style: regular12_5.copyWith(
                            color: dark2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Go CLub
          Padding(
            padding: const EdgeInsets.only(top: 19, left: 15, right: 15),
            child: Container(
              clipBehavior: Clip.hardEdge,
              width: double.infinity,
              height: 65,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xFFEAF3F6),
                    Colors.white,
                  ],
                ),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: const Color(0xFFE8E8E8),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 8,
                    top: 4,
                    bottom: 4,
                    child: SvgPicture.asset('assets/icons/dots.svg'),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/star.svg',
                          height: 40,
                        ),
                        const SizedBox(width: 16),
                        Flexible(
                          fit: FlexFit.tight,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '120 XP lagi ada Harta Karun',
                                style: semibold14.copyWith(color: dark1),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Container(
                                width: double.infinity,
                                clipBehavior: Clip.hardEdge,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: dark3,
                                ),
                                child: LinearProgressIndicator(
                                  backgroundColor: dark3,
                                  color: green1,
                                  value: .75,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        SvgPicture.asset(
                          'assets/icons/left.svg',
                          // ignore: deprecated_member_use
                          color: dark1,
                          height: 27,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Instant Access
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Akses Cepat',
                  style: bold18.copyWith(color: dark1),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: const Color(0xFFE8E8E8),
                    ),
                  ),
                  child: Column(
                    children: [
                      ...[
                        'Pintu masuk motor, MNC Land',
                        'Pintu keluar motor, MNC Land'
                      ].map(
                        (text) => Padding(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            children: [
                              Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                  color: green2,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: SvgPicture.asset(
                                  'assets/icons/goride.svg',
                                  // ignore: deprecated_member_use
                                  color: Colors.white,
                                  width: 24,
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Flexible(
                                fit: FlexFit.tight,
                                child: Text(
                                  text,
                                  style: regular14.copyWith(color: dark1),
                                ),
                              ),
                              const SizedBox(
                                width: 24,
                              ),
                              SvgPicture.asset(
                                'assets/icons/left.svg',
                                // ignore: deprecated_member_use
                                color: dark1,
                                height: 24,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // GopayLater
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: blue1,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/gosend.svg',
                        // ignore: deprecated_member_use
                        color: Colors.white,
                        width: 24,
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      child: Text(
                        'Gopaylater',
                        style: bold18.copyWith(color: dark1),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  'Lebih hemat pake GoPayLater',
                  style: bold16.copyWith(color: dark1),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  'Yuk, belnaja di Tokopedia pake GoPay Later dan nikmatin cashback-nya~',
                  style: semibold14.copyWith(color: dark2),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 24,
          ),

          // News
          ...news.map(
            (item) => Padding(
              padding: const EdgeInsets.only(
                bottom: 24,
                left: 16,
                right: 16,
              ),
              child: Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: dark4),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/${item.image}'),
                    Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.title,
                            style: bold16.copyWith(color: dark1),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            item.description,
                            style: regular14.copyWith(color: dark2),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
