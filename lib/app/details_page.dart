import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff282723),
      appBar: AppBar(
        backgroundColor: const Color(0xff282723),
        title: const Text('Details Page',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white38, width: 1),
            ),
            child: Center(
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Hero(
                    tag: image,
                    child: Image(
                      image: AssetImage(image),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 400,
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
                        border: Border.all(color: Colors.white12, width: 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text('OVERVIEW',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'The 2021 Toyota Camry is a midsize family sedan that slots between Toyota\'s smaller Corolla and the larger, more luxurious Avalon. This latest Camry largely lives up to the model\'s decades-long reputation of reliability, but what makes it so appealing is that it also boasts a contemporary look and feel, premium features, and lively driving dynamics.',
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text('FEATURES',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                            GridView.builder(
                              itemCount: 6,
                              shrinkWrap: true,
                              physics: const BouncingScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                mainAxisSpacing: 0,
                                childAspectRatio: 1.8,
                              ),
                              itemBuilder: (context, index) {
                                return Row(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/icons/passenger.png',
                                          height: 30,
                                          color: Colors.orange,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      '2 Seats',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 90,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: const Color(0xff252420),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade800,
                            blurRadius: 0,
                            spreadRadius: 0,
                            offset: const Offset(-1, -2),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('Owner',
                                      style: TextStyle(
                                        color: Colors.white54,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                                const SizedBox(height: 8),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('Tushar Mahmud',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.call,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle,
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.message,
                                  color: Colors.yellow,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Text(
                '${String.fromCharCodes(Runes('\u0024'))}220/day',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Container(
                height: 60,
                width: 220,
                decoration: BoxDecoration(
                  color: Color(0xffFDCA4A),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    'Rent this car',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
