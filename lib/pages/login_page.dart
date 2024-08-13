import 'package:flutter/material.dart';
import 'package:flutter_nannycarenest/shared/theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/backgroundlogin.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 400,
                  height: 400,
                  margin: EdgeInsets.only(bottom: 40),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/logo-nanny-carenest-red.png',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 100),
                Container(
                  margin: EdgeInsetsDirectional.symmetric(horizontal: 16),
                  padding:
                      EdgeInsets.only(top: 32, left: 16, right: 16, bottom: 40),
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nanny Carenest',
                        style: kTitleTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        'Get discount up to 15% if you sign up with Nanny Carenest apps',
                        style: kDescTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: regular,
                          letterSpacing: 1.2,
                        ),
                      ),
                      SizedBox(height: 40),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/home-page');
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(400, 52),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/icon-google.png'),
                                ),
                              ),
                            ),
                            SizedBox(width: 12),
                            Text(
                              'Sign In dengan Google',
                              style: kTitleTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: bold,
                                letterSpacing: 1.2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
