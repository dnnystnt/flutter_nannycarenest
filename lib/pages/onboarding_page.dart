import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nannycarenest/shared/theme.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;
  CarouselController carouselController = CarouselController();

  List<String> titles = [
    'Welcome to CareNest!',
    'Perfect Match for Your Family',
    'Manage Everything in One Place',
  ];

  List<String> subtitles = [
    'CareNest connects you with reliable nannies and daycare centers, giving you peace of mind while you are at work.',
    'Browse detailed profiles of qualified caregivers, choose the perfect fit for your family, and book childcare with just a few taps.',
    'Securely pay for childcare through the app, message caregivers directly, and track your bookings effortlessly.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000000),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CarouselSlider(
                  items: [
                    Image.asset(
                      'assets/img-onboarding-one.png',
                      height: 926,
                    ),
                    Image.asset(
                      'assets/img-onboarding-two.png',
                      height: 926,
                    ),
                    Image.asset(
                      'assets/img-onboarding-three.png',
                      height: 926,
                    ),
                  ],
                  options: CarouselOptions(
                    height: 865,
                    viewportFraction: 1,
                    enableInfiniteScroll: false,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                  carouselController: carouselController,
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsetsDirectional.symmetric(horizontal: 16),
                padding:
                    EdgeInsets.only(top: 20, left: 16, right: 16, bottom: 20),
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      titles[currentIndex],
                      style: kTitleTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: bold,
                        letterSpacing: 1.2,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      subtitles[currentIndex],
                      style: kDescTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: regular,
                        letterSpacing: 1.2,
                      ),
                    ),
                    SizedBox(height: 40),
                    currentIndex == 2
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Skip',
                                style: kPrimaryTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: bold,
                                  letterSpacing: 1.2,
                                ),
                              ),
                              Container(
                                width: 40,
                                height: 5,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/onboardingbarthree.png',
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 133,
                                height: 48,
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/login-page');
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: kPrimaryColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                  child: Text(
                                    'Next',
                                    style: kWhiteTextStyle,
                                  ),
                                ),
                              ),
                            ],
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Skip',
                                style: kPrimaryTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: bold,
                                  letterSpacing: 1.2,
                                ),
                              ),
                              Container(
                                width: 40,
                                height: 5,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: currentIndex == 0
                                        ? AssetImage(
                                            'assets/onboardingbarone.png')
                                        : AssetImage(
                                            'assets/onboardingbartwo.png'),
                                  ),
                                ),
                              ),
                              Container(
                                width: 133,
                                height: 48,
                                child: TextButton(
                                  onPressed: () {
                                    carouselController.nextPage();
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: kPrimaryColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                  child: Text('Next', style: kWhiteTextStyle),
                                ),
                              ),
                            ],
                          )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
