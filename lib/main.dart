import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: farmer(),
    theme: ThemeData(primarySwatch: Colors.green),
  ));
}

class farmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.cartShopping), label: 'cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), label: "account")
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(
              'FARMERS FRESH ZONE',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            floating: false,
            pinned: true,
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Icon(FontAwesomeIcons.locationDot),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Center(child: Text('kochi')),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Icon(FontAwesomeIcons.arrowDown),
              )
            ],
            bottom: AppBar(
              title: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                        ),
                        hintText: "Search for Vegitables and fruits.....!!"),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.greenAccent,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                  ),
                  height: 30,
                  width: 120,
                  child: const Center(
                    child: Text(
                      "VEGETABLES",
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.greenAccent)),
                  height: 30,
                  width: 120,
                  child: Center(
                    child: Text(
                      'FRUITS',
                      style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          color: Colors.greenAccent),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.greenAccent)),
                  height: 30,
                  width: 120,
                  child: Center(
                    child: Text(
                      'EXOTIC',
                      style: TextStyle(color: Colors.greenAccent),
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.greenAccent),
                  ),
                  child: Center(
                      child: Text(
                    'FRESH CUTS',
                    style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        color: Colors.greenAccent),
                  )),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            CarouselSlider(
                items: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/image/images.png'),
                            fit: BoxFit.fill)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/image/Fruit-Veggie-Sayings.webp'),
                            fit: BoxFit.fill)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/image/vegitables.jpg'),
                            fit: BoxFit.fill)),
                  )
                ],
                options: CarouselOptions(
                  height: 250,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.easeIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 500),
                  viewportFraction: 1,
                )),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 70,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: Color.fromARGB(255, 45, 99, 47)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Icon(FontAwesomeIcons.stopwatch20),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('30 MINS POLICY')
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Icon(FontAwesomeIcons.mobileRetro),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('TRACEABILITY')
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Icon(FontAwesomeIcons.stickerMule),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('local sourcing')
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Text('shop by category ')],
            ),
            SizedBox(
              height: 10,
            ),
            Cargry()
          ])),
        ],
      ),
      //bottomNavigationBar: BottomNavigationBar(type: BottomNavigationBarType.fixed),
    );
  }
}

class Cargry extends StatelessWidget {
  List<String> images = [
    "assets/image/index.jpg"
        "assets/image/fruits.jpg"
        'assets/image/corionderleef.jpg'
  ];
  List<String> name = [
    'VEGITABLES'
        "FRUITS"
        "FRESHCUTS"
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: images.length,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 5, mainAxisExtent: 5),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Container(
                    height: 120,
                    width: 300,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(images[index]), fit: BoxFit.fill),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                  ),
                  Padding(padding: EdgeInsets.only(top: 5)),
                  Text(name[index]),
                ],
              ),
            ),
          );
        });
  }
}
