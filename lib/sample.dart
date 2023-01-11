import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.green),
    home: Farmer(),
  ));
}

class Farmer extends StatefulWidget {
  @override
  State<Farmer> createState() => _FarmerState();
}

class _FarmerState extends State<Farmer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text(
              'FARMERS FRESH ZONE',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            floating: false,
            pinned: true,
            actions: const [
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(Icons.location_on_outlined)),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Center(
                      child: Text(
                    "Kochi",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ))),
            ],
            bottom: AppBar(
              title: Container(
                color: Colors.white,
                width: double.infinity,
                height: 40,
                child: const Center(
                  child: TextField(
                      decoration: InputDecoration(
                    hintText: 'Search for vegetables and fruits..',
                    prefixIcon: Icon(Icons.search),
                  )),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(
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
                    height: 20,
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
                        border: Border.all(
                          color: Colors.greenAccent,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    height: 25,
                    width: 120,
                    child: const Center(
                      child: Text(
                        "FRUITS",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.greenAccent,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    height: 25,
                    width: 120,
                    child: const Center(
                      child: Text(
                        "EXOTIC CUTS",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              CarouselSlider(
                  items: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/image/garlic.jpg'),
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
                              image: AssetImage('assets/image/new.jpg'),
                              fit: BoxFit.fill)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/image/garlic1.jpg'),
                              fit: BoxFit.fill)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/image/garlic2.jpg'),
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
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    //color: Colors.grey,
                    border: Border.all(width: 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: const [
                          Icon(Icons.timer),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "30 mins ploicy",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(FontAwesomeIcons.mobileRetro),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Traceability",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(FontAwesomeIcons.home),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Local Sourrounding",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ]),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Shop by Category",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              VegGrid(),
            ]),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 78, 180, 146),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color.fromARGB(255, 21, 63, 22),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: Color.fromARGB(255, 23, 54, 24),
              ),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Color.fromARGB(255, 14, 41, 15),
              ),
              label: 'Account')
        ],
        selectedLabelStyle: TextStyle(fontSize: 16),
        selectedItemColor: Colors.black,
      ),
    );
  }
}

class VegGrid extends StatelessWidget {
  List<String> images = [
    "assets/image/index.jpg",
    "assets/image/fruits.jpg",
    "assets/image/flor.jpg",
    "assets/image/corionderleef.jpg",
    "assets/image/garlic.jpg",
    "assets/image/new.jpg",
  ];

  List<String> names = [
    "Vegetables",
    "Fruits",
    "Exotic",
    "Fresh cut",
    "Nutrition Charged",
    "Packed Flavours"
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5),
        itemCount: images.length,
        itemBuilder: (BuildContext, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // height: 90,
                //width: 120,
                height: MediaQuery.of(context).size.height / 8,
                width: MediaQuery.of(context).size.width * .3,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 20.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(images[index])),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Center(child: Text(names[index])),
            ],
          );
        });
  }
}
