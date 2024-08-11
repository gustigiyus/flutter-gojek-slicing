import 'package:flutter/material.dart';
import 'package:flutter_latihan_slicing_2/theme.dart';
import 'package:flutter_svg/svg.dart';

class InstantAccess extends StatelessWidget {
  const InstantAccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
