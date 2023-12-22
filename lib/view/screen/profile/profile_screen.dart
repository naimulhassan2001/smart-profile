import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile/utils/app_icon.dart';
import 'package:profile/utils/app_image.dart';
import 'package:profile/view/screen/profile/widget/about_warp_listview.dart';
import 'package:profile/view/screen/profile/widget/rich_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var left = (MediaQuery.of(context).size.width - 124) / 2;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(

          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 220,
                  decoration: const BoxDecoration(
                      color: Color(0xFF54A630),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16))),
                ),
                Positioned(
                    top: 158,
                    left: left,
                    child: Image.asset(
                      AppImage.profileImage,
                      width: 124,
                      height: 124,
                    )),
                const Positioned(
                    top: 80,
                    left: 30,
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                      size: 18,
                    )),
              ],
            ),
            const SizedBox(
              height: 65,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Kierra Press',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          fontSize: 24,
                          color: const Color(0xFF3C3D3F),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Osychologist',
                        style: GoogleFonts.inter(
                          fontSize: 15,
                          color: const Color(0xFF8D9094),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 8),
                        decoration: const ShapeDecoration(
                          color: Color(0xFFFAFAFA),
                          shape: OvalBorder(
                            side:
                                BorderSide(width: 1, color: Color(0xFFEAEAEA)),
                          ),
                        ),
                        child: CircleAvatar(
                            radius: 20,
                            backgroundColor: const Color(0xFFFAFAFA),
                            child: SvgPicture.asset(
                              AppIcon.call,
                              width: 18,
                              height: 18,
                            )),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 8),
                        decoration: const ShapeDecoration(
                          color: Color(0xFFFAFAFA),
                          shape: OvalBorder(
                            side:
                                BorderSide(width: 1, color: Color(0xFFEAEAEA)),
                          ),
                        ),
                        child: CircleAvatar(
                            radius: 20,
                            backgroundColor: const Color(0xFFFAFAFA),
                            child: SvgPicture.asset(
                              AppIcon.videoCall,
                              width: 18,
                              height: 18,
                            )),
                      ),
                      Container(
                        decoration: const ShapeDecoration(
                          color: Color(0xFFFAFAFA),
                          shape: OvalBorder(
                            side:
                                BorderSide(width: 1, color: Color(0xFFEAEAEA)),
                          ),
                        ),
                        child: CircleAvatar(
                            radius: 20,
                            backgroundColor: const Color(0xFFFAFAFA),
                            child: SvgPicture.asset(
                              AppIcon.message,
                              width: 18,
                              height: 18,
                            )),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'About',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.openSans(
                          fontSize: 20,
                          color: const Color(0xFF3C3D3F),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  const RichTextWidget(),
                  WarpListView(),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Patient Reviews',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.openSans(
                          fontSize: 20,
                          color: const Color(0xFF3C3D3F),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color(0xFFEAEAEA)),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x1E000000),
                              blurRadius: 24,
                              offset: Offset(0, 8),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    AppImage.reviewProfile,
                                    height: 36,
                                    width: 36,
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Omar Faruk',
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.inter(
                                          fontSize: 15,
                                          color: const Color(0xFF3C3D3F),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 14,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 14,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 14,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 14,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 14,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Text(
                                    'Dec 24,2020',
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.inter(
                                      fontSize: 13,
                                      color: const Color(0xFF8D9094),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Text(
                                'I’m really thanksfull to Dr. Gumoh Brian for this nice treatment and friendly behavior. Absolutely he is a best and feborite doctor.',
                                textAlign: TextAlign.start,
                                style: GoogleFonts.inter(
                                  fontSize: 15,
                                  color: const Color(0xFF8D9094),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 36,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 8,
                            height: 8,
                            margin: const EdgeInsets.only(right: 8),
                            decoration: const ShapeDecoration(
                              color: Color(0xFFEAEAEA),
                              shape: OvalBorder(),
                            ),
                          ),
                          Container(
                            width: 8,
                            height: 8,
                            margin: const EdgeInsets.only(right: 8),
                            decoration: const ShapeDecoration(
                              color: Color(0xFF54A630),
                              shape: OvalBorder(),
                            ),
                          ),
                          Container(
                            width: 8,
                            height: 8,
                            margin: const EdgeInsets.only(right: 8),
                            decoration: const ShapeDecoration(
                              color: Color(0xFFEAEAEA),
                              shape: OvalBorder(),
                            ),
                          ),
                          Container(
                            width: 8,
                            height: 8,
                            margin: const EdgeInsets.only(right: 8),
                            decoration: const ShapeDecoration(
                              color: Color(0xFFEAEAEA),
                              shape: OvalBorder(),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                        height: 52,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 14),
                        decoration: ShapeDecoration(
                          color: const Color(0xFF54A630),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Request As Therapist',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w600,
                              height: 0.08,
                              letterSpacing: -0.07,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
