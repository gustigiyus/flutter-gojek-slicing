import 'package:flutter/material.dart';
import 'package:flutter_latihan_slicing_2/theme.dart';
import 'package:flutter_svg/svg.dart';

class GoPayLater extends StatelessWidget {
  const GoPayLater({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
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
                width: 7,
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
    );
  }
}
