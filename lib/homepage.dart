// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_hotel_booking_app_page_ui/components/travelcard.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String> urls = [
    "https://img.freepik.com/premium-photo/double-bed-ordinary-hotel-room_1036975-258298.jpg",
    "https://images.pexels.com/photos/164595/pexels-photo-164595.jpeg",
    "https://img.freepik.com/free-photo/3d-rendering-luxury-bedroom-suite-resort-hotel-with-twin-bed-living_105762-2018.jpg",
    "https://thumbs.dreamstime.com/b/aerial-view-dubai-palm-jumeirah-island-united-arab-emirates-aerial-view-dubai-palm-jumeirah-island-uae-137295592.jpg",
    "https://images.unsplash.com/photo-1467269204594-9661b134dd2b?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Z2VybWFueXxlbnwwfHwwfHx8MA%3D%3D",
    "https://www.khyberhotels.com/blog/wp-content/uploads/2023/10/winter-kashmir.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          title: Row(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.menu))
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome Ashwin',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
            ),
            const Text(
              'Pick your location 📍',
              style: TextStyle(
                  color: Colors.black38,
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 25,
            ),
            Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(30),
              child: const TextField(
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    hintText: "Search for Hotel,Flight...",
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            DefaultTabController(
              length: 3,
              child: Expanded(
                child: Column(
                  children: [
                    const TabBar(
                      indicatorColor: Color(0xFFFE8C68),
                      unselectedLabelColor: Color(0xFF555555),
                      labelColor: Color(0xFFFE8C68),
                      tabs: [
                        Tab(
                          text: "Trending",
                        ),
                        Tab(
                          text: "Promotion",
                        ),
                        Tab(
                          text: "Favorities",
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // ignore: sized_box_for_whitespace
                    Container(
                      height: 300,
                      child: TabBarView(
                        children: [
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                travelCard(urls[0], 'Luxury Hotel', 'Kochi', 3),
                                travelCard(
                                    urls[1], 'Parisons Hotel', 'Palakad', 3),
                                travelCard(
                                    urls[2], '5 Star hotel', 'Bangalore', 5)
                              ],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                travelCard(urls[3], 'Explore Dubai', 'UAE', 4),
                                travelCard(
                                    urls[4], 'Visit Bayern', 'Germany', 4)
                              ],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                travelCard(urls[5], 'Kashmir', 'India', 5)
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
