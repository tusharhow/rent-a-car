import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:rent_a_car/app/details_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff282723),
        appBar: AppBar(
          backgroundColor: Color(0xff282723),
          title: Row(
            children: [
              FadeInDown(
                duration: Duration(milliseconds: 500),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),
              ),
              const SizedBox(width: 10),
              FadeInDown(
                duration: Duration(milliseconds: 500),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello,',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'John Doe',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          actions: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white38, width: 1),
              ),
              child: Center(
                child: Icon(
                  Icons.notifications_none,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(width: 10)
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Profile',
            ),
          ],
        ),
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 30),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Search for a car',
                      prefixIcon: Icon(Icons.search, color: Colors.white54),
                      filled: true,
                      fillColor: Colors.black,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide.none,
                      ),
                      enabled: true,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Image.asset(
                    'assets/icons/filter1.png',
                    height: 1,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          // buy car, rent car and sell car card
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width * 0.25,
                  decoration: BoxDecoration(
                    color: const Color(0xff252420),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade800,
                        blurRadius: 0,
                        spreadRadius: 0,
                        offset: Offset(-1, -2),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icons/car.png',
                          height: 30,
                          color: Colors.orange,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Buy car',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width * 0.25,
                  decoration: BoxDecoration(
                    color: const Color(0xff252420),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade800,
                        blurRadius: 0,
                        spreadRadius: 0,
                        offset: Offset(-1, -2),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icons/car-rental.png',
                          height: 30,
                          color: Colors.blueAccent,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Rent car',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width * 0.25,
                  decoration: BoxDecoration(
                    color: const Color(0xff252420),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade800,
                        blurRadius: 0,
                        spreadRadius: 0,
                        offset: Offset(-1, -2),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icons/car-sell.png',
                          height: 30,
                          color: Colors.greenAccent,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Sell car',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              height: 155,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: const Color(0xff252420),
                borderRadius: BorderRadius.circular(12),
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.grey.shade800,
                //     blurRadius: 0,
                //     spreadRadius: 0,
                //     offset: Offset(-1, -2),
                //   ),
                // ],
                border: Border.all(color: Colors.grey.shade800, width: 1),
              ),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 16, left: 16, right: 16),
                    child: Row(
                      children: [
                        Text(
                          'Search by brand',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          'View all',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 70,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 7,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Container(
                              height: 70,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: Image.asset(
                                  'assets/icons/lambo.png',
                                  height: 45,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              height: 650,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: const Color(0xff252420),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade800, width: 1),
              ),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 16, left: 16, right: 16),
                    child: Row(
                      children: [
                        Text(
                          'Most popular cars',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          'View all',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  GridView.builder(
                    itemCount: 6,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return Hero(
                        tag: 'assets/images/car${index + 1}.png',
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailsPage(
                                        image:
                                            'assets/images/car${index + 1}.png')));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Stack(
                              clipBehavior: Clip.none,
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff252420),
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.orange.withOpacity(0.5),
                                        blurRadius: 0,
                                        spreadRadius: 0,
                                        offset: const Offset(1, 2),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: -35,
                                  child: Image.asset(
                                    'assets/images/car${index + 1}.png',
                                    width: 120,
                                    height: 100,
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // color balls
                                      Row(
                                        children: [
                                          Container(
                                            height: 10,
                                            width: 10,
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                          const SizedBox(width: 5),
                                          Container(
                                            height: 10,
                                            width: 10,
                                            decoration: BoxDecoration(
                                              color: Colors.blue,
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                          const SizedBox(width: 5),
                                          Container(
                                            height: 10,
                                            width: 10,
                                            decoration: BoxDecoration(
                                              color: Colors.green,
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        'MV ZS EV',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'First Edition 2021',
                                        style: TextStyle(
                                          color: Colors.white54,
                                          fontSize: 14,
                                        ),
                                      ),

                                      Text(
                                        '\$ 45,894',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
        ])));
  }
}
