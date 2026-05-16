import 'package:assignment1/widgets/cards.dart';
import 'package:assignment1/widgets/universalcard_widget.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _selectedIndex = 0;
  final PageController _controller = PageController();
  final PageController controller = PageController(viewportFraction: 0.8);
  final PageController jcontroller = PageController(viewportFraction: 0.75);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(Icons.menu_outlined),
        title: const Text(
          'Home',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        actions: [
          const Icon(Icons.bookmark_border_outlined),
          SizedBox(width: screenWidth * 0.02),
          const Icon(Icons.chat_bubble_outline_sharp),
          SizedBox(width: screenWidth * 0.02),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueAccent,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.send_sharp),
            label: 'Internship',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Jobs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.psychology_sharp),
            label: 'Learn',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.rocket_launch_rounded),
            label: 'Clubs',
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight * 0.04),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Hi, Rahul! 👋',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    const Text("Let's help you land your dream career"),
                    SizedBox(height: screenHeight * 0.05),
                    const Text(
                      "Trending on Internshala  🔥",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    SizedBox(
                      height: screenHeight * 0.2,
                      child: PageView(
                        padEnds: false,
                        physics: AlwaysScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        controller: controller,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Cards(
                              tag: 'Get Now',
                              title: 'Flutter Developer Perk',
                              gradientColors: [Colors.blueAccent, Colors.pink],
                              prefixText: "Complete Your",
                              highlightText: " Flutter Project ",
                              suffixText: '& get Certified.',
                              onTap: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Cards(
                              tag: 'Get Now',
                              title: 'Web Developer Perk',
                              gradientColors: [Colors.blueAccent, Colors.pink],
                              prefixText: " Complete Your",
                              highlightText: " Web Project",
                              suffixText: ' & \n get Certified.',
                              onTap: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Cards(
                              tag: 'Get Now',
                              title: 'Full Stack Developer Perk',
                              gradientColors: [Colors.blueAccent, Colors.pink],
                              prefixText: "Complete Your",
                              highlightText: " Assignment, Project ",
                              suffixText: '& \n get Certified.',
                              onTap: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Cards(
                              tag: 'Get Now',
                              title: 'Full Stack Developer Perk',
                              gradientColors: [Colors.blueAccent, Colors.pink],
                              prefixText: "Complete Your",
                              highlightText: " Assignment, Project ",
                              suffixText: '& \n get Certified.',
                              onTap: () {},
                            ),
                          ),
                          Cards(
                            tag: 'Get Now',
                            title: 'Full Stack Developer Perk',
                            gradientColors: [Colors.blueAccent, Colors.pink],
                            prefixText: "Complete Your",
                            highlightText: "Assignment, Project",
                            suffixText: '& get Certified.',
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Align(
                      alignment: Alignment.center,
                      child: SmoothPageIndicator(
                        controller: controller,
                        count: 5,
                        axisDirection: Axis.horizontal,
                        effect:SwapEffect(
                          activeDotColor: Colors.blue,
                          dotColor: Colors.grey.shade300,
                          dotHeight: 8,
                          dotWidth: 8,
                          spacing: 6,
                          radius: 15,
                          offset: 1.0,
                          type: SwapType.zRotation,
                          paintStyle: PaintingStyle.fill,
                        )
                       ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Container(
                height: screenHeight * 0.45,
                width: screenWidth * 1.0,
                color: Colors.blueGrey.withValues(alpha: 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: screenHeight * 0.03),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.03,
                      ),
                      child: Text(
                        "Recommended for you ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.03,
                      ),
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 14, color: Colors.black),
                          children: [
                            TextSpan(text: " as per your "),
                            TextSpan(
                              text: " preferences",
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    SizedBox(
                      height: 270,
                      // width: 400,
                      child: PageView(
                        padEnds: false,
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        controller: jcontroller,
                        children: [
                          Padding(
                            padding: EdgeInsets.all( 5.0),
                            child: UniversalCard(
                              tag: "Actively hiring",
                              title: "Flutter Developer",
                              subtitle: 'Abc company',
                              logo: Icons.seventeen_mp_rounded,
                              location: 'remote',
                              duration: "6 months",
                              salary: "₹ 6,000 - 8,000 /month",
                              onTap: () {},
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all( 5.0),
                            child: UniversalCard(
                              tag: "Actively hiring",
                              title: "Flutter Developer",
                              subtitle: 'Abc company',
                              logo: Icons.seventeen_mp_rounded,
                              location: 'remote',
                              duration: "6 months",
                              salary: "₹ 6,000 - 8,000 /month",
                              onTap: () {},
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all( 5.0),
                            child: UniversalCard(
                              tag: "Actively hiring",
                              title: "Flutter Developer",
                              subtitle: 'Abc company',
                              logo: Icons.seventeen_mp_rounded,
                              location: 'remote',
                              duration: "6 months",
                              salary: "₹ 6,000 - 8,000 /month",
                              onTap: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: UniversalCard(
                              tag: "Actively hiring",
                              title: "Flutter Developer",
                              subtitle: 'Abc company',
                              logo: Icons.seventeen_mp_rounded,
                              location: 'remote',
                              duration: "6 months",
                              salary: "₹ 6,000 - 8,000 /month",
                              onTap: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: screenHeight*0.02),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SmoothPageIndicator(controller: jcontroller, count: 4,
                      axisDirection: Axis.horizontal,
                          effect: WormEffect(
                            dotColor: Colors.grey.shade300,
                            activeDotColor: Colors.blue,
                            dotHeight: 6,
                            dotWidth: 6,
                            spacing: 5,
                            radius: 20,
                            type: WormType.thin,
                          )
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}