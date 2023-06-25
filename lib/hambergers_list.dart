import 'package:flutter/material.dart';

import 'burger_page.dart';

class HambergersList extends StatefulWidget {
  const HambergersList({Key? key}) : super(key: key);
  @override
  State<HambergersList> createState() => _HambergersListState();
}

class _HambergersListState extends State<HambergersList> {
  @override
  Widget build(BuildContext context) {
    int item = 10;

    Widget beefBurgerImage = SizedBox(
      height: 120,
      child: Image.asset('images/beef_burger.jpg'),
    );
    Widget chickenBurgerImage = SizedBox(
      height: 115,
      child: Image.asset('images/chicken_burger.jpg'),
    );

    return SliverToBoxAdapter(
      child: Container(
        height: 240,
        margin: const EdgeInsets.only(top: 15),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: item,
            itemBuilder: (context, index) {
              bool reverse = index.isEven;
              return Stack(
                children: [
                  Container(
                    height: 240,
                    width: 200,
                    margin: EdgeInsets.only(
                        left: 20, right: index == item - 1 ? 20 : 0),
                    child: GestureDetector(
                      onTap: () {
                        // TODO NAVIGATOR
                        Navigator.of(context).pushNamed(BurgerPage.tag);
                      },
                      child: Card(
                        color: Theme.of(context).primaryColor,
                        elevation: 3,
                        margin: const EdgeInsets.all(10),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              const Text(
                                'Burger',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  const Spacer(),
                                  const Text(
                                    '\$13.95',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Spacer(),
                                  SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Icon(Icons.add),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 60,
                    left: reverse ? 40 : 48,
                    child: GestureDetector(
                      onTap: () {
                        // TODO NAVIGATOR
                      },
                      child: reverse ? chickenBurgerImage : beefBurgerImage,
                    ),
                  )
                ],
              );
            }),
      ),
    );
  }
}
