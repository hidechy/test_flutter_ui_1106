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
              tabs: [
                CircleAvatar(
                  backgroundColor: Colors.yellowAccent.shade700,
                  radius: 25,
                ),
                CircleAvatar(
                  backgroundColor: Colors.yellowAccent.shade700,
                  radius: 25,
                ),
                CircleAvatar(
                  backgroundColor: Colors.yellowAccent.shade700,
                  radius: 25,
                ),
                CircleAvatar(
                  backgroundColor: Colors.yellowAccent.shade700,
                  radius: 25,
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  Center(child: Text('Sofa')),
                  Center(child: Text('Bed')),
                  Center(child: Text('Bathtub')),
                  Center(child: Text('Sofa')),
                ],
              ),
            ),
          ],
        ),
      ),
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
