import 'package:flutter/material.dart';
import 'package:news/model/Page_model.dart';
import 'package:news/screen/home_screen.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

ValueNotifier<int> _pageIndexNotifier = ValueNotifier(0);

List<PageModel> pages;

void _addPage() {
  pages = List<PageModel>();
  pages.add(
    PageModel(
        'Welcome!',
        '1- Making friends is easy as waving your hand back and forth in easy step',
        'assets/images/d1.jpg',
        Icons.ac_unit),
  );
  pages.add(
    PageModel(
        'Ailng',
        '2- Making friends is easy as waving your hand back and forth in easy step',
        'assets/images/d2.jpg',
        Icons.handyman),
  );
  pages.add(
    PageModel(
        'Naxt',
        '3- Making friends is easy as waving your hand back and forth in easy step',
        'assets/images/d3.jpg',
        Icons.nat_rounded),
  );
  pages.add(
    PageModel(
        'Map',
        '4- Making friends is easy as waving your hand back and forth in easy step',
        'assets/images/d4.jpg',
        Icons.map),
  );
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    _addPage();
    return Stack(
      children: [
        PageView.builder(
          itemCount: pages.length,
          onPageChanged: (index) {
            _pageIndexNotifier.value = index;
          },
          itemBuilder: (context, index) {
            return Scaffold(
              body: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            pages[index].image,
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Transform.translate(
                        offset: Offset(0, -100),
                        child: Icon(
                          pages[index].icon,
                          size: 150,
                          color: Colors.white,
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(0, -50),
                        child: Text(
                          pages[index].title,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(0, -40),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 29),
                          child: Text(
                            pages[index].descrabtion,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        ),
        Transform.translate(
          offset: Offset(0, 400),
          child: _pageViewIndicatror(pages.length),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 24),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: double.infinity,
              height: 45,
              child: FlatButton(
                color: Colors.red.shade800,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        _upgradPage();
                        return HomeScreen();
                      },
                    ),
                  );
                },
                child: Text(
                  'GET STARTED',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _pageViewIndicatror(int length) {
    return PageViewIndicator(
      pageIndexNotifier: _pageIndexNotifier,
      length: length,
      normalBuilder: (animationController, index) => Circle(
        size: 8.0,
        color: Colors.grey,
      ),
      highlightedBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Curves.ease,
        ),
        child: Circle(
          size: 8.0,
          color: Colors.red.shade800,
        ),
      ),
    );
  }
}

void _upgradPage() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool('seen', true);
}
