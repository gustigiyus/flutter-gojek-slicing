import 'package:flutter/material.dart';
import 'package:flutter_latihan_slicing_2/datas/icons.dart';
import 'package:flutter_latihan_slicing_2/theme.dart';
import 'package:flutter_svg/svg.dart';

class GoPay extends StatelessWidget {
  const GoPay({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
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
    );
  }
}
