import 'package:flutter/material.dart';
import 'package:flutter_latihan_slicing_2/theme.dart';
import 'package:flutter_svg/svg.dart';

class GoClub extends StatelessWidget {
  const GoClub({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
