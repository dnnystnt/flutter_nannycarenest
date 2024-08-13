import 'package:flutter/material.dart';
import 'package:flutter_nannycarenest/shared/theme.dart';
import 'package:flutter_nannycarenest/widgets/carenest_article_nanny.dart';
import 'package:flutter_nannycarenest/widgets/custom_nanny.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Widget header()
    Widget header() {
      return Container(
        margin: EdgeInsets.only(bottom: 6),
        width: 428,
        height: 291,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          image: DecorationImage(
            image: AssetImage(
              'assets/img-jumbotron.png',
            ),
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 50),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 54,
                              height: 54,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/image_profile.png',
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 14),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Good Morning',
                                  style: kWhiteTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: regular,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Dylan Watson',
                                  style: kWhiteTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: semiBold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/notifications.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                // controller: usernameEmailController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: kBackgroundOneColor,
                  prefixIcon: Icon(Icons.search),
                  prefixIconColor: kDescTextColor,
                  label: Text(
                    'Search...',
                    style: kDescTextStyle,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    // Widget advertisementSection()
    Widget advertisementSection() {
      return Container(
        margin: EdgeInsets.only(top: 280, left: 16, right: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Advertisement',
                  style: kTitleTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  'See All',
                  style: kPrimaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 12),
              width: 396,
              height: 174,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.7),
                    spreadRadius: -2,
                    blurRadius: 8,
                    offset: const Offset(2, 4),
                  ),
                ],
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/image_advertisement.png',
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 28, left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'BabyMonth of Luck',
                          style: kTitleTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: semiBold,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Get Special Offer Up to 35%',
                          style: kDescTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: regular,
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: 120,
                          height: 48,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: kPrimaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                            child: Text(
                              'Claim',
                              style: kWhiteTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: semiBold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    // Widget ournannySection()
    Widget ournannySection() {
      return Container(
        margin: EdgeInsets.only(top: 510, left: 16, right: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Our Nanny',
                  style: kTitleTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  'See All',
                  style: kPrimaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomNanny(imgUrl: 'assets/nanny-one.png', title: 'Nanny A'),
                  CustomNanny(imgUrl: 'assets/nanny-two.png', title: 'Nanny B'),
                  CustomNanny(
                      imgUrl: 'assets/nanny-three.png', title: 'Nanny C'),
                  CustomNanny(
                      imgUrl: 'assets/nanny-four.png', title: 'Nanny D'),
                ],
              ),
            ),
          ],
        ),
      );
    }

    // Widget carenestarticleSection()
    Widget carenestarticleSection() {
      return Container(
        margin: EdgeInsets.only(top: 660, left: 16, right: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Carenest Articles',
                  style: kTitleTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  'See All',
                  style: kPrimaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
            CarenestArticleNanny(
                imgUrl: 'assets/article-one.png',
                title: 'The Advantages of Babysitting',
                description:
                    'Lorem Ipsum Dolor Sit amet Consectetur adipiscing elit.'),
            CarenestArticleNanny(
                imgUrl: 'assets/article-two.png',
                title: 'Parents guide to choose nanny',
                description:
                    'Lorem Ipsum Dolor Sit amet Consectetur adipiscing elit.'),
            CarenestArticleNanny(
                imgUrl: 'assets/article-three.png',
                title: 'The Study of Caregiving',
                description:
                    'Lorem Ipsum Dolor Sit amet Consectetur adipiscing elit.'),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundOneColor,
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: kBackgroundOneColor,
        shape: CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 6,
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: kWhiteColor,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: kPrimaryColor,
          unselectedItemColor: kTitleTextColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: kPrimaryTextStyle.copyWith(
            fontSize: 8,
            fontWeight: medium,
          ),
          unselectedLabelStyle: kTitleTextStyle.copyWith(
            fontSize: 8,
            fontWeight: medium,
          ),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_home.png',
                width: 28,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_booking.png',
                width: 28,
              ),
              label: 'Booking',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_message.png',
                width: 28,
              ),
              label: 'Message',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icon_profile.png',
                width: 28,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {},
        backgroundColor: kPrimaryColor,
        child: Image.asset(
          'assets/nannylogocenter.png',
          width: 42,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                header(),
                advertisementSection(),
                ournannySection(),
                carenestarticleSection(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
