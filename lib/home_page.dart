import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 4, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            const SizedBox(height: 50),
            homeAppBar(),
            Divider(
              height: 40,
              color: Colors.yellowAccent.shade700,
              thickness: 0.5,
            ),
            TabBar(
              controller: _tabController,
              indicator: BoxDecoration(
                border: Border.all(color: Colors.blueAccent),
              ),
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              tabs: [
                CircleAvatar(
                  backgroundColor: Colors.yellowAccent.shade700,
                  radius: 25,
                  child: Image.asset(
                    'assets/sofa_icon.png',
                    height: 30,
                    width: 30,
                    fit: BoxFit.cover,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.yellowAccent.shade700,
                  radius: 25,
                  child: Image.asset(
                    'assets/bed_icon.png',
                    height: 30,
                    width: 30,
                    fit: BoxFit.cover,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.yellowAccent.shade700,
                  radius: 25,
                  child: Image.asset(
                    'assets/bathtub_icon.png',
                    height: 30,
                    width: 30,
                    fit: BoxFit.cover,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.yellowAccent.shade700,
                  radius: 25,
                  child: Image.asset(
                    'assets/lamp_icon.png',
                    height: 30,
                    width: 30,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  tabDetails(text: 'Sofa'),
                  const Center(child: Text('Bed')),
                  const Center(child: Text('Bathtub')),
                  const Center(child: Text('Lamp')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ///
  Widget tabDetails({required String text}) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Modern - $text',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            Row(
              children: const [
                Text(
                  'See all',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(width: 5),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ],
        ),
        SizedBox(height: 15),
        Expanded(
          child: Stack(
            children: [
              Row(
                children: [
                  RotatedBox(
                    quarterTurns: 1,
                    child: Text(
                      'household'.toUpperCase(),
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.w900,
                        color: Colors.grey.shade200,
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        color: Colors.yellowAccent.shade700,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$299',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.add,
                              size: 30,
                              color: Colors.yellowAccent.shade700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  ///
  Widget homeAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Products',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              'best household collection',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
        const Icon(Icons.shopping_cart_outlined),
      ],
    );
  }
}
