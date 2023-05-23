
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Hello() {}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 238, 238),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('lib/images/unibitImage.png'),
            ),
            Icon(Icons.notifications),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: Container(
        clipBehavior:
            Clip.hardEdge,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(24),
            topLeft: Radius.circular(24),
          ),
        ),
        child: NavigationBar(
          backgroundColor: Colors.white,
          onDestinationSelected: (int index) {
            setState(() {});
          },
          destinations: const <Widget>[
            NavigationDestination(
              icon: Icon(Icons.headset_mic, color: Colors.grey),
              label: 'Contact',
            ),
            NavigationDestination(
              icon: Icon(Icons.wallet_rounded, color: Colors.grey),
              label: 'Wallet',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.share,
                color: Colors.grey,
              ),
              label: 'Share',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.person),
              icon: Icon(Icons.account_box_rounded, color: Colors.grey),
              label: 'Profile',
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(

        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Hello, Dipak 👋",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                    maxHeight: double.infinity, minHeight: 20),
                child: Image.asset("lib/images/1st_Image.png"),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(9.0),
            child: Card(
                color: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                elevation: 10,
                child: Column(
                  children: [
                    Container(
                      padding:const  EdgeInsets.all(12),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(15)),
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(
                              maxHeight: double.infinity, minHeight: 20),
                          child: Image.asset("lib/images/2nd_image.png"),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: const Text(
                            "Play Ludo and Earn Money",
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          height: 60,
                          width: 60,
                          child: const CircleAvatar(
                            backgroundImage:
                                AssetImage("lib/images/4th_image.png"),
                            maxRadius: 15,
                            minRadius: 15,
                          ),
                        ),
                        Container(
                          child: const Text(
                            "5,00,000 + \n players",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 14),
                          ),
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.fromLTRB(0, 0, 12, 0),
                          width: 190,
                          child: ElevatedButton(
                            onPressed: () => {Hello()},
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              backgroundColor: Colors.orange,
                            ),
                            child: const Text(
                              'Play Now',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )),
          ),
          Container(
            padding: EdgeInsets.all(9.0),
            child: Card(
                color: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                
                ),
                elevation: 10,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(15)),
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(
                              maxHeight: double.infinity, minHeight: 20),
                          child: Image.asset("lib/images/3rd_image.png"),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: const Text(
                            "Play Cricket Fantasy League",
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          height: 60,
                          width: 60,
                          child: const CircleAvatar(
                            backgroundImage:
                                AssetImage("lib/images/4th_image.png"),
                            maxRadius: 15,
                            minRadius: 15,
                          ),
                        ),
                        Container(
                          child: const Text(
                            "5,00,000 + \n players",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 14),
                          ),
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.fromLTRB(0, 0, 12, 0),
                          width: 190,
                          child: ElevatedButton(
                            onPressed: () => {Hello()},
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              backgroundColor: Colors.orange,
                            ),
                            child: const Text(
                              'Play Now',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )),
          ),
        ],
      ),
        )
    );
      
  }
}